.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea eax, qword ptr [rsi + rdi + 81]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
cmp dx, 39
xchg al, dl
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
xor al, 78
xor al, -74
sub bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
