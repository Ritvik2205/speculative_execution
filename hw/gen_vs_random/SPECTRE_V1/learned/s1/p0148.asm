.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
cmp rcx, 49
adc sil, -77
test sil, al
test bl, -8
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rax, 1189904463
and cl, -57
xor bl, dl
and al, sil
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
