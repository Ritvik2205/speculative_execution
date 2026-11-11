.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
add bl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
add dl, 47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
sub al, 9
btc bx, cx
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 58
cmovl ax, si
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
mul rdi
lea rbx, qword ptr [rax]
not edx
cmovb ebx, ecx
btc edi, edi
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
