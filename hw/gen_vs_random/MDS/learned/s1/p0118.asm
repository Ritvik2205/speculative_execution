.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and sil, -9
sub cl, 71
or eax, 678817098
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, -7
or dl, -97
test al, 127
xor al, -26
xor eax, 2063216578
and ax, 13090
and al, dl
xor al, 8
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test cl, bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
xor edx, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
