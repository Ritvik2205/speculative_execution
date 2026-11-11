.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
cmovle rdi, rsi
test dil, -126
and al, -68
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
and dl, cl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
not bl
sbb al, 61
cmp al, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
