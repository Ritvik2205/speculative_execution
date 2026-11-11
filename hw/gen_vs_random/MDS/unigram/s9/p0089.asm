.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 34
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
btr edi, eax
not al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 86
or edx, edi
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
test bl, bl
cmovle rdx, rsi
btr ax, bx
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rbx, rdx
or bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
