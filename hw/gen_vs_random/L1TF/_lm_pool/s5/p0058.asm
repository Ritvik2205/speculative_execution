.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
inc al
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
not edx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and cl, 28
test dil, -126
not sil
test bl, 84
lea eax, qword ptr [rax + rbx + 20]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
