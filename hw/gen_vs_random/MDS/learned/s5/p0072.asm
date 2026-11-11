.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
test bl, -9
test ecx, -1843375753
jmp .bb_0.1
.bb_0.1:
not bl
and dil, 125
bts rax, rbx
xor dl, cl
or cl, bl
and cl, -6
test eax, 1838539683
and cx, -2
test dil, dl
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
xor al, sil
test ax, 6779
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
