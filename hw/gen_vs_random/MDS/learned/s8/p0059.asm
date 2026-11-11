.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 13
xor al, 34
and eax, 33
test eax, -571234566
or cl, sil
and sil, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, -1701787862
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and sil, al
jmp .bb_0.1
.bb_0.1:
and al, -54
and cl, dil
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
xor sil, 110
test esi, 1857129931
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
