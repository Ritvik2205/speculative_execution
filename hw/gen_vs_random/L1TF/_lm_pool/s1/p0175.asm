.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
setno dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or sil, cl
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 20
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
