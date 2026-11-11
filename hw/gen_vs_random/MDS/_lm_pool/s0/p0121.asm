.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and bl, 68
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
xor dil, sil
xor dil, sil
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 72
and dil, -39
jmp .bb_0.1
.bb_0.1:
or sil, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
