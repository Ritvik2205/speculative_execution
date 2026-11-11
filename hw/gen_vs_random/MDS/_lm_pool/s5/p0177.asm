.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
or al, bl
and rax, -1931765367
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 25
xor al, dil
test sil, -96
bt ax, cx
test edx, -372470678
and al, -55
jmp .bb_0.2
.bb_0.2:
and eax, 33
test edi, -1252846009
and dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
