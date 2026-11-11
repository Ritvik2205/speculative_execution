.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
or al, cl
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
xor di, -83
and bl, 68
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 1
jmp .bb_0.1
.bb_0.1:
and di, 91
test sil, -55
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
cmovnp rbx, rdi
or rsi, 22
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
and cl, -19
jmp .bb_0.2
.bb_0.2:
test cl, 54
or ax, -20176
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
