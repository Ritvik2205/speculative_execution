.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
test bl, -92
or dil, -113
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
mov bl, cl
adc cl, -34
and al, dil
adc al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
