.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
sub sil, -99
test rax, 404297506
and di, 20
and dil, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
setb dil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
jmp .bb_0.3
.bb_0.3:
and esi, 32
and eax, -409673666
cmp dil, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
