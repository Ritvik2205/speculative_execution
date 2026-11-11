.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -47
test sil, 47
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rax + rdx + 91]
sub bl, sil
sub al, cl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 86
sbb eax, 100
lea rdi, qword ptr [rbx + rcx + 69]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
