.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 83
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
or rax, -141551502
xor bl, al
xor dil, -5
or dil, cl
xor cl, 55
or rax, 52
and sil, cl
btr ebx, edi
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or al, 30
test dil, cl
xor si, 80
xor dil, dl
and esi, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
