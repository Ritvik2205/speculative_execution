.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
xor dl, -19
xor rax, -843636050
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
or sil, -78
and bx, 21
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
xor cl, 98
or dil, 12
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor dl, 34
or di, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
