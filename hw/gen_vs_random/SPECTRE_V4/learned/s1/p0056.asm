.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
add rax, -874478885
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
or dl, al
add al, -6
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
adc al, 41
cmp al, 75
xor rsi, -3
cmp al, 116
add dl, bl
sbb bl, 121
bts ax, 159
xchg cx, dx
cmp al, 114
xor ax, 30500
xor cl, dil
and rax, 37
and al, 41
sbb dl, -71
xor al, -6
adc dil, 124
sub dl, 107
cmp bl, al
sbb ax, 75
and cl, bl
mov al, bl
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
sub bl, 66
adc bl, 97
sub ax, 24426
and dl, cl
and rax, 86
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
