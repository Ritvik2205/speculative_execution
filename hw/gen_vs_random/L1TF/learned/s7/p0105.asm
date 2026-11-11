.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
or dl, -92
xor bl, dil
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
or sil, dl
bts esi, 57
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
movsx rcx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
