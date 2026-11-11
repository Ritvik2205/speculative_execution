.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
and cx, -79
xor eax, -69
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
setnb bl
movzx rdx, dil
cmovb ax, bx
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
xor ax, 34
cmovnz edx, ecx
btc ax, cx
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
