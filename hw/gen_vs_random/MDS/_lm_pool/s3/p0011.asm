.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, si
or si, 94
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or al, 37
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
test cl, 101
test sil, 41
jmp .bb_0.1
.bb_0.1:
test ecx, -1843375753
test al, cl
bt bx, si
test al, cl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 48
and si, -121
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
