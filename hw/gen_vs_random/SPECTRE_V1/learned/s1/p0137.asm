.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, ebx
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
sub bl, -19
lea bx, qword ptr [rcx + rdx + 18]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
lea ax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
