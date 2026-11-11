.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
xor al, bl
xor rax, -2072052278
add al, al
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test al, -70
jmp .bb_0.1
.bb_0.1:
sbb ax, -5921
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
