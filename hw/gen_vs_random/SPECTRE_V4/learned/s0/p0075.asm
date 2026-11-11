.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and al, al
cmp ax, -18179
cmp rdx, -49
dec al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
sub bl, -98
sub bl, cl
or rbx, rdx
and bl, cl
cmp cl, sil
imul dx, ax
sub dl, 107
adc al, sil
xor al, -66
jmp .bb_0.2
.bb_0.2:
movzx ebx, al
cmp cl, 107
test dil, -26
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
sub dil, cl
or dil, 89
sbb cl, dil
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
test al, 72
cmp dx, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
