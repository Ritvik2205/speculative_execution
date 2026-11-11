.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
test dil, al
jmp .bb_0.1
.bb_0.1:
test dil, sil
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
test rax, rdx
add sil, -61
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
