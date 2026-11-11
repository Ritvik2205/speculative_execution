.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor ax, 0
movzx rdx, dil
cmovb ax, bx
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
xor cl, sil
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
setnb bl
xor eax, -2123070438
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and cx, -79
cmovnz edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
btc ax, cx
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
