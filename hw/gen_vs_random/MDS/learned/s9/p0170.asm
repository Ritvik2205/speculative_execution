.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and al, 82
and cx, -2
and dil, -62
btr eax, edx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test dil, -80
xor al, -26
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
test sil, cl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
test al, cl
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
