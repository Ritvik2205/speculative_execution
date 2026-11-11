.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1341747033
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
sbb al, 95
and cl, -118
cmp al, -1
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sbb al, -14
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
test al, 115
sbb bl, -75
cmp bl, -16
and al, -28
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmp rax, 2096656187
add eax, 1255256879
or cx, 59
sbb sil, 24
sbb al, -14
adc dl, dil
and dx, -107
sub rax, 1294268026
adc bl, dil
xor sil, dil
test al, dl
and dl, al
xor bx, -65
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
add al, sil
and al, dil
sub dl, -16
add bl, al
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
adc dil, sil
and rsi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
