.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
and dl, 84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
xor edx, edx
and cl, -109 # instrumentation
cmovns rcx, rcx
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
not ax
cmovo rcx, rbx
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and al, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and bl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
not si
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
cmovo rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
xor edx, 38
or bl, dil
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
cmovno cx, dx
cmovnl rdi, rdi
and cl, 122 # instrumentation
cmovnb rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
