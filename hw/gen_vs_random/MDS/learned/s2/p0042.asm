.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and ax, 5001
test eax, -571234566
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
btc si, 99
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
xor cl, sil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
