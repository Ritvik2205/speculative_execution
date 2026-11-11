.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and esi, 54
xor dil, 124
test sil, al
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and di, 99
xor sil, bl
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
bt cx, si
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
jmp .bb_0.1
.bb_0.1:
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
