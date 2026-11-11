.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
add dx, 39
imul al
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
sbb ecx, 100
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
sbb ax, si
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
add bl, -9 # instrumentation
adc rax, 1544006018
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 7
lea cx, qword ptr [rcx + rax + 10]
xor ebx, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
