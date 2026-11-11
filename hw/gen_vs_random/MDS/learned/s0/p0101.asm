.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
xor sil, -14
or di, 98
or al, -17
jmp .bb_0.1
.bb_0.1:
btr di, 89
btc rdi, 221
or sil, dil
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
bt dx, si
jmp .bb_0.5
.bb_0.5:
test al, dil
xor bl, -61
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
