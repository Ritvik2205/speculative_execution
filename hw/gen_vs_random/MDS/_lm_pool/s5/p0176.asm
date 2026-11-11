.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
test rax, 1000448998
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or sil, -78
and sil, 89
jmp .bb_0.1
.bb_0.1:
cmovnp rdi, rcx
test al, 66
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
jmp .bb_0.2
.bb_0.2:
test sil, 41
test al, bl
and esi, 49
and eax, 461212071
btc eax, 40
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
