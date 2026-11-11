.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp eax, ebx
or sil, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
xor dl, 40
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
bts di, si
xor dx, 50
not rbx
test rdi, 57
btr rax, 209
xor rbx, 89
and dl, -53 # instrumentation
cmovbe edi, edx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 33
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
