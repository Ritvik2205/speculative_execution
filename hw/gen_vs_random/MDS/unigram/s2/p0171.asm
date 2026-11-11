.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz esi, eax
cmovle rbx, rcx
or bl, -125
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
bts rdx, rax
and rbx, 65
cmovnb edx, ecx
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
xor rcx, 71
cmovnle ebx, edi
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
bts si, dx
or sil, dil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
bts bx, si
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and dl, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
test ebx, -2015966884
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
