.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rsi]
sbb dl, bl
lea edx, qword ptr [rax + rax + 94]
sbb edx, 23
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rax, 1994547909
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
test dl, 84
movzx di, dl
cmovbe edx, ecx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
