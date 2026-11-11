.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], di
setns dl
test cl, -31
bt ax, si
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
add al, -92 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 85
cmovnbe dx, dx
adc dil, dil
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
or rcx, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
