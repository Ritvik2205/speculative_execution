.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
cmovno si, di
sub cl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
lea rax, qword ptr [rsi]
add bl, sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
movsx rbx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
