.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 100 # instrumentation
lea si, qword ptr [rbx]
lea cx, qword ptr [rbx + rsi + 48821]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
lea ebx, qword ptr [rdi]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
add cl, 107 # instrumentation
cmovnl ax, ax
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
jmp .bb_0.1
.bb_0.1:
add bl, 48 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], -5
not esi
or rax, -82
btr eax, 231
add esi, -17
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sbb dl, -26
adc cl, dl
jmp .bb_0.2
.bb_0.2:
xor eax, 965442135
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
movzx rdx, dil
xor cl, sil
xor ax, 27703
cmovnz edx, ecx
setnb bl
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
and cx, 127
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
