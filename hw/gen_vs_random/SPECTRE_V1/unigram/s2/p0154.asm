.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 28
cmovno esi, eax
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 95
add bl, 36 # instrumentation
setnl bl
lea dx, qword ptr [rax]
xor cx, 10
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
