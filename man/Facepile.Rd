% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components.R, R/documentation.R, R/examples.R
\name{Facepile}
\alias{Facepile}
\title{Facepile}
\usage{
Facepile(...)
}
\arguments{
\item{addButtonProps}{\code{IButtonProps} \cr Button properties for the add face button}

\item{ariaDescription}{\code{string} \cr ARIA label for persona list}

\item{ariaLabel}{\code{string} \cr Defines the aria label that the screen readers use when focus goes on a list of personas.}

\item{chevronButtonProps}{\code{IButtonProps} \cr Deprecated at v0.70, use \code{overflowButtonProps} instead.}

\item{className}{\code{string} \cr Additional css class to apply to the Facepile}

\item{componentRef}{\verb{IRefObject<IFacepile>} \cr Optional callback to access the IFacepile interface. Use this instead of ref for accessing the public methods and properties of the component.}

\item{getPersonaProps}{\verb{(persona: IFacepilePersona) => IPersonaSharedProps} \cr Method to access properties on the underlying Persona control}

\item{maxDisplayablePersonas}{\code{number} \cr Maximum number of personas to show}

\item{onRenderPersona}{\verb{IRenderFunction<IFacepilePersona>} \cr Optional custom renderer for the persona, gets called when there is one persona in personas array}

\item{onRenderPersonaCoin}{\verb{IRenderFunction<IFacepilePersona>} \cr Optional custom renderer for the persona coins, gets called when there are multiple persona in personas array}

\item{overflowButtonProps}{\code{IButtonProps} \cr Properties for the overflow icon}

\item{overflowButtonType}{\code{OverflowButtonType} \cr Type of overflow icon to use}

\item{overflowPersonas}{\code{IFacepilePersona[]} \cr Personas to place in the overflow}

\item{personas}{\code{IFacepilePersona[]} \cr Array of IPersonaProps that define each Persona.}

\item{personaSize}{\code{PersonaSize} \cr Size to display the personas}

\item{showAddButton}{\code{boolean} \cr Show add person button}

\item{styles}{\verb{IStyleFunctionOrObject<IFacepileStyleProps, IFacepileStyles>} \cr Call to provide customized styling that will layer on top of the variant rules.}

\item{theme}{\code{ITheme} \cr Theme provided by High-Order Component.}
}
\description{
A face pile (\code{Facepile}) displays a list of personas. Each circle represents a person and contains their image or initials. Often this control is used when sharing who has access to a specific view or file, or when assigning someone a task within a workflow.

For more details and examples visit the official \href{https://developer.microsoft.com/en-us/fluentui#/controls/web/Facepile}{docs}.
The R package can not handle each and every case, so for advanced use cases
you need to work using the original docs to achieve the desired result.
}
\section{Best practices}{
\subsection{Layout}{
\itemize{
\item The face pile empty state should only include an "Add" button. Another variant is to use an input field with placeholder text instructing people to add a person. See the people picker component for the menu used to add people to the face pile list.
\item When there is only one person in the face pile, consider using their name next to the face or initials.
\item When there is a need to show the face pile expanded into a vertical list, include a downward chevron button. Selecting the chevron opens a standard list view of people.
\item When the face pile exceeds a max number of 5 people, show a button at the end of the list indicating how many are not being shown. Clicking or tapping on the overflow would open a standard list view of people.
\item The component can include an "Add" button which can be used for quickly adding a person to the list.
\item When hovering over a person in the face pile, include a tooltip or people card that offers more information about that person.
}
}
}

\examples{
library(shiny.fluent)

if (interactive()) {
  personas <- list(
    list(personaName = "Adams Baker"),
    list(personaName = "Clark Davis"),
    list(personaName = "Evans Frank")
  )

  shinyApp(
    ui = Facepile(personas = personas),
    server = function(input, output) {}
  )
}
}
