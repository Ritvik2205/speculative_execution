.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
test edi, -1252846009
xor cl, sil
test dil, sil
or cl, -77
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
or rax, 52
or al, 16
and bl, dil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rbx, 65
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test bl, -114
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
and eax, 561041355
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
