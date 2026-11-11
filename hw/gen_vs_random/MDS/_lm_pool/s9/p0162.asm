.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 10
xor sil, 110
and dil, 125
or dl, -31
bt edi, esi
test esi, 1857129931
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
test dil, 46
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and al, 87
or sil, -78
btc si, 43
not dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
