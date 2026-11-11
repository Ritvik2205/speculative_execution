.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rsi, 74
and dl, al
xor bl, cl
add dl, bl
or rdi, -41
add cl, dil
adc cl, -4
or dil, cl
sub al, 63
and cl, dl
xor al, cl
cmp al, -122
sbb bl, -98
and al, -12
mov bl, al
or al, al
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and al, 100
and si, -74
sub al, 96
mov dil, bl
test dil, bl
and dl, 126
test al, 115
cmp al, bl
add dil, -61
cmp al, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
