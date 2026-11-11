.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
cmovno dx, di
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, al
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
add dl, bl
add ax, 8031
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
