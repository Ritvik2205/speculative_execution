.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
xor cl, 83
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test edi, -1252846009
and al, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test ecx, -1843375753
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and al, 84
and sil, -9
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
