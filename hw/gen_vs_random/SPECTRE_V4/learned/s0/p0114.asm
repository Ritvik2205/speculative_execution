.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 18
and di, -65
test bl, dl
xor ax, 15671
sub sil, -35
test al, 57
sub al, dl
add esi, 53
and al, dil
cmp eax, -1538116527
and cl, -118
mov al, dil
xor cl, -101
and cl, -128
sub al, 59
xchg al, bl
sub rcx, -74
imul bx, di, 7
test dil, -58
sbb cl, 12
adc al, 43
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
test bl, 87
add bl, -59
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
adc dl, dil
or cl, bl
test al, -85
neg cl
sub rax, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
