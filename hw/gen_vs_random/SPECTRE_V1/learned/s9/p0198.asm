.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
sub al, cl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
cmp sil, 25
lea si, qword ptr [rcx]
sub dl, bl
and al, -54
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
and al, 33
sub dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
