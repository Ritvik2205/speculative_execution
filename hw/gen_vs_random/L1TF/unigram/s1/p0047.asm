.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 55 # instrumentation
lea edx, qword ptr [rbx + rsi + 58]
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
imul dl
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rcx + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
sub ax, 7297
lea ax, qword ptr [rax + rdi + 27]
add dl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
mov al, -101
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
mov bx, 21854
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
