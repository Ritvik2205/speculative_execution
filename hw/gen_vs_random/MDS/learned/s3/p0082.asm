.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
xor cl, al
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor rdx, -59
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
or sil, bl
or dil, cl
or cl, al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 24
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
or di, 43
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
