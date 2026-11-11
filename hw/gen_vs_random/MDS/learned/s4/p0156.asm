.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and eax, -85386306
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
test edi, -1252846009
or al, 24
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
or bl, dil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or rax, -1523798580
xor dl, -59
or ax, 30524
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
