.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
or cl, cl
jmp .bb_0.1
.bb_0.1:
or bl, dil
xor sil, -15
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
or sil, dil
test dil, bl
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and al, bl
test cl, dil
cmp dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
