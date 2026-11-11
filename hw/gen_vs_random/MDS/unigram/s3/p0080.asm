.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, al
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
cmovo ebx, edi
cmovbe si, ax
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
cmovz ebx, edx
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
cmovle rdi, rdi
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
xor dil, dl
btr si, 208
test bl, al
cmovnbe ebx, esi
and dil, bl
and dl, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovo rbx, rbx
and bl, 65 # instrumentation
cmovnbe si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
