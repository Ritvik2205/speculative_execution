.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 18
xor dil, -37
and bl, -43
inc cl
sbb al, -114
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
or ecx, 54
cmp sil, al
cmp al, dil
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
