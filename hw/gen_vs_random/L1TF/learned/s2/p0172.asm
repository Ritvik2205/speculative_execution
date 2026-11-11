.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
lea rdi, qword ptr [rdi + rsi]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
lea ax, qword ptr [rdx + rax + 69]
test sil, 29
lea cx, qword ptr [rsi + rdx + 100]
sub rdi, 64
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx]
and al, bl
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
