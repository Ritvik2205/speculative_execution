.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1213318393
xor ax, 15671
cmp rax, -1247892360
sub al, 127
sub dil, 35
test sil, 1
and ax, -12738
sub sil, -35
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
or bl, cl
movsx ax, cl
jmp .bb_0.1
.bb_0.1:
test bl, 110
test al, 114
sbb dl, 53
and dl, bl
xchg cx, bx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
sbb ecx, 71
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
or sil, al
neg al
sub rsi, -48
xor al, 48
xor si, -73
xchg sil, al
xor al, 30
and al, dil
sub eax, 1050143384
adc bl, 0
sbb sil, al
sub bl, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
