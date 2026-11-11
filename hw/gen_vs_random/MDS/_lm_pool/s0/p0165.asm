.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], esi
or sil, -49
and dil, -39
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
or dl, bl
jmp .bb_0.1
.bb_0.1:
or bl, bl
jmp .bb_0.2
.bb_0.2:
or rax, -1561934807
test esi, 1857129931
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or al, cl
xor cl, 15
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor sil, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
