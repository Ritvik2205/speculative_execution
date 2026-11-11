.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -26
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and cl, bl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
mov al, -93
sub dl, 107
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
cmp cl, -105
sub dl, cl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
dec al
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
xor ax, -29507
and al, -87
xor ax, 13332
test edi, -2098143765
sbb dl, -106
or ax, -26182
adc edi, -83
xor al, sil
xor bl, dl
bts ax, 159
sbb sil, bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and bl, -30
add dil, dil
test si, 69
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
