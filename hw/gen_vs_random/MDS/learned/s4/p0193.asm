.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
test bl, 65
and cx, -2
or sil, -78
or al, 37
or cl, sil
xor al, bl
test dil, al
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
test al, cl
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rbx
jmp .bb_0.2
.bb_0.2:
test sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
