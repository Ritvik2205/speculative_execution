.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, ax
or al, 30
test eax, -675944960
test dil, dl
test dl, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
xor cl, dl
or sil, bl
or dil, -41
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
jmp .bb_0.3
.bb_0.3:
or al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
