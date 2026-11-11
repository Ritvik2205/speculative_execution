.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 55
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, rsi
xor edx, 54
test al, 59
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
xor cl, bl
sbb cl, al
sbb cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
