.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, -88
or al, dil
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and cx, -2
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
test dil, -80
test bl, -114
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
