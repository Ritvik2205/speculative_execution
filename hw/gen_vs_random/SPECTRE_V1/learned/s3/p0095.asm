.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
test al, 84
sub cl, dl
sbb edi, 35
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
adc bx, 17
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -123 # instrumentation
cmovnp rdi, rcx
sub sil, -18
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
