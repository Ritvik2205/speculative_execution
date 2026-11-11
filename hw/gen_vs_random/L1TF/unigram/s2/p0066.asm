.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and cl, 65
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 44
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
imul cx, bx, 33
and sil, 37
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 22
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
movzx rdx, sil
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
add dl, 126 # instrumentation
setnb bl
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
