.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 64
inc al
xor rax, 20
sub rax, 1806572419
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add dl, -56 # instrumentation
cmovs rdi, rbx
lea esi, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
