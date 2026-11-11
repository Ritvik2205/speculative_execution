.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
not sil
jmp .bb_0.1
.bb_0.1:
bts rcx, 24
xor al, sil
not al
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
test dil, 46
not al
and sil, -56
and bx, 14
bts rax, 77
test cl, sil
xor dil, 124
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
