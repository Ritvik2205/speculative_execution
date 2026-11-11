.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and al, -68
xor dl, 19
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
cmp dl, bl
setnz cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rax + rsi + 23]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
cmp bx, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
