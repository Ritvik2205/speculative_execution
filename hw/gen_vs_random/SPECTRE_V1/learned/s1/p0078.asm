.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
sbb dil, al
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add al, dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
