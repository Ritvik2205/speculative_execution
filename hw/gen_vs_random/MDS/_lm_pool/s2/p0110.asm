.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and al, 14
and bl, 68
xor dil, bl
or cl, cl
and sil, -9
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
test cl, al
xor bl, -102
or dil, dl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
or cl, -36
xor al, sil
test bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
