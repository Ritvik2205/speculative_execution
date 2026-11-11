.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
or rdi, 21
and al, cl
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
or di, 4
jmp .bb_0.2
.bb_0.2:
xor cl, dl
or bl, 100
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test ax, -11534
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
