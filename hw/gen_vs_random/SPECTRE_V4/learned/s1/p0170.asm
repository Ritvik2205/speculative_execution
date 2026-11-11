.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
or dl, 71
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
sbb bl, -98
adc cl, -66
or bl, al
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 75
and al, -124
sub dil, dl
add bl, -49
movsx di, bl
test dl, -125
xor ax, 13332
sbb cl, sil
mov bl, sil
or cl, dil
jmp .bb_0.1
.bb_0.1:
or bx, -33
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor cx, -80
cmp al, dl
cmp al, 114
adc dl, 37
cmp sil, al
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 118
or cl, al
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sub cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
