.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -885407671
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
setnb bl
xor ax, -24879
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
and cx, -79
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
btc ax, cx
movzx rdx, dil
cmovnz edx, ecx
cmovb ax, bx
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
