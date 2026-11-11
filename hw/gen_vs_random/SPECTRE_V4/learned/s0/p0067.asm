.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 66
cmp rcx, -121
add al, -127
add al, sil
cmp al, bl
sub al, 29
dec dil
cmovno ax, dx
and dx, -107
adc dil, sil
test edx, 1479885278
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
sbb dx, 2
add bl, al
sub al, 0
btc rdi, rcx
or ax, 48
sub rcx, -74
cmp al, -44
sbb cl, dil
sub rax, 1294268026
add al, -1
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
sbb al, 31
test al, 114
sub rax, 2016976449
sub rbx, 101
sbb dil, al
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
xor cl, dil
or al, dil
sub al, 63
sbb sil, -11
cmp al, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
