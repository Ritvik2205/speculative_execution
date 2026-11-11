.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 68
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
xchg edx, edi
jmp .bb_0.1
.bb_0.1:
test dil, -116
add dl, dl
add cl, bl
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
