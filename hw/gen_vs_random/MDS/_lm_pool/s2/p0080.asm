.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
or al, dil
test edx, -1561252782
xor dl, 40
test eax, 343548072
test cl, dil
and sil, 74
or edx, -78
xor dil, -70
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
or di, 86
or dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
