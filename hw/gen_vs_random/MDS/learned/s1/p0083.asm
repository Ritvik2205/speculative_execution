.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 27
bts edi, 248
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
not dil
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and ax, 29207
jmp .bb_0.2
.bb_0.2:
cmovb cx, si
or cl, 119
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
or dx, 125
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
test rbx, 3
xor bl, sil
xor dl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
