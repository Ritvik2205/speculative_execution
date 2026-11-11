.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, di
xor sil, 64
jmp .bb_0.1
.bb_0.1:
and cx, di
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
jmp .bb_0.2
.bb_0.2:
add al, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and cl, 59
test al, 15
add dil, sil
and cl, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
