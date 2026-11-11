.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or al, -48
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
test bl, 84
sbb cl, -11
adc al, 80
add al, dil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
