.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 62
cmp ebx, -33
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea cx, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
lea rdx, qword ptr [rsi + rdx + 35]
sub rdx, 45
sub al, -89
cmp bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
