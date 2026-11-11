.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
cmp rax, 2096656187
test dl, dil
test dil, 64
add al, -55
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
cmp sil, bl
and dl, -11
and cl, bl
test al, -24
or cl, dil
and al, -124
xor rdx, 106
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
test ebx, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
