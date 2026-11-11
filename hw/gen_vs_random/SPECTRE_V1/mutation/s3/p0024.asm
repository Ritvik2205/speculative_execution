.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
and al, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
adc al, cl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 26 # instrumentation
sbb dl, cl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
bt rdi, 110
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
