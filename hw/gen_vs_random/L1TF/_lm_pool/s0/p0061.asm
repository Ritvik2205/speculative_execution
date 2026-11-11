.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
xor al, dl
xor al, 16
and ax, 37
and ax, 26813
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
lea rcx, qword ptr [rax + rsi + 84]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
