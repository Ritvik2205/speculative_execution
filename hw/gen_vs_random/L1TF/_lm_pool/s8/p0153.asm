.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, ax
cmovno ax, di
btr ax, di
test al, bl
test bl, 12
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
jmp .bb_0.2
.bb_0.2:
test dl, bl
jmp .bb_0.3
.bb_0.3:
test dl, cl
sbb cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
