.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
mov dil, sil
sub al, sil
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
setns al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 111
lea di, qword ptr [rcx]
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
