.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and esi, 91
and dil, -62
jmp .bb_0.1
.bb_0.1:
test dil, dl
or bl, 127
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
xor al, 99
xor al, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
