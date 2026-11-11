.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -51
xor al, -66
add dil, al
cmp rax, -2096157586
sub cl, dl
sbb dil, 6
xor dx, cx
or dx, 33
adc al, 43
cmovno ax, cx
and dil, cl
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and dl, sil
add dil, bl
or eax, -1213318393
sbb di, -105
add al, dil
movsx di, al
or dl, al
or cx, -74
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
cmp al, -53
add sil, dl
jmp .bb_0.1
.bb_0.1:
and al, dil
adc dil, 112
or ax, 57
add dil, 105
xor ax, 13329
and cl, -128
sbb dl, bl
cmp dil, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
