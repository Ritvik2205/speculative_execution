.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, dx
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, -99
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and bl, cl
xchg al, dil
xor cl, dl
sub al, dil
inc ecx
lea rax, qword ptr [rdx + rax]
jl .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
