.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, 21
add bl, -116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
sub dil, sil
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
and cl, al
cmovnle cx, cx
xor dx, 60
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
btr ebx, edi
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
