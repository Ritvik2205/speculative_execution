.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
and ebx, -52
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, dil
adc al, 70
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
dec al
or al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
