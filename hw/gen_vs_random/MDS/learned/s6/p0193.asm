.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
xor dl, dl
and cl, -71
or al, 30
or al, -78
and sil, -56
xor sil, -14
xor al, cl
xor dil, al
xor sil, 94
xor dx, 78
xor al, 9
or al, -58
and dil, -62
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
