.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and dl, -33 # instrumentation
cmovns rdx, rdx
and bl, 97
or rax, -2043376621
cmovbe dx, di
cmovnbe dx, bx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
cmovnz ecx, edx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
btc bx, cx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
bt ebx, 107
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 7
and cl, -22 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdi]
and dl, 122 # instrumentation
cmovnb rdx, rax
cmovbe cx, cx
and eax, -1971658905
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
