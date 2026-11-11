.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -2123070438
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
movzx rdx, dil
xor cl, sil
xor ax, 30996
cmovnz edx, ecx
setnb bl
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
and cx, -79
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
btc ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
cmovb ax, bx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmp esi, -52
lea edx, qword ptr [rsi + rsi]
setnbe cl
xor ax, 30996
or eax, 287965578
lea di, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
