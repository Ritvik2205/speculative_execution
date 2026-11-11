.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 70
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
lea dx, qword ptr [rsi + rdi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
lea rcx, qword ptr [rdx + rax + 95]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
