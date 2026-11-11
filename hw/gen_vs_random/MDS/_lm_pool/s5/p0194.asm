.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
or cl, -77
and bx, 23
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or eax, 1725503461
xor sil, 27
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
or cl, 7
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
xor rax, -1657511731
test ebx, -961564216
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
test cl, al
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
