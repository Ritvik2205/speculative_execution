.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
add al, -44
inc rax
or bl, 26
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
lea dx, qword ptr [rcx + rbx]
lea rax, qword ptr [rsi + rbx]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdx
xor rdx, rbx
sbb cl, bl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
