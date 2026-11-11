.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
test al, 22
and dil, cl
test eax, -1634766116
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and al, dl
and sil, -69
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
or dl, -8
or al, -61
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and sil, 74
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
xor rcx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
