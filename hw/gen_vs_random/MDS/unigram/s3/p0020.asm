.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 34
or bl, dl
and cl, dl
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
or bl, -98
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and sil, 65
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
cmovl rax, rcx
or dil, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
or dl, cl
btc ecx, 47
or rax, -2043376621
cmovnb rbx, rsi
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
cmovbe ax, si
or rax, 1749358813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
