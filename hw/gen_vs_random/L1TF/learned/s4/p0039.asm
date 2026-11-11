.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
sub dil, 87
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], bx
and bl, 89
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rcx + rdi]
test al, -84
or dil, -113
xor bl, al
bt edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
