.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor ax, 27703
setnb bl
movzx rdx, dil
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
xor eax, -885407671
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
btc ax, cx
cmovnz edx, ecx
xor cl, sil
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
cmovb ax, bx
and cx, -79
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
