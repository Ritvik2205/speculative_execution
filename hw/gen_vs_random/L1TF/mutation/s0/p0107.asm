.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, sil
xor ax, 27703
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
movzx rdx, dil
btc ax, cx
setnb bl
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
xor eax, 965442135
cmovnz edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and cx, -79
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
cmovb ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
