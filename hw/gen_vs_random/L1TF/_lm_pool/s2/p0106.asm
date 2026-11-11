.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
cmovns rax, rsi
jmp .bb_0.2
.bb_0.2:
cmovl ebx, ebx
adc sil, al
jmp .bb_0.3
.bb_0.3:
xor bl, al
sub dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
