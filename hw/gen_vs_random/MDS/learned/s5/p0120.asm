.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
or bx, 78
or dil, -41
xor bl, dil
or ax, 16560
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
xor al, sil
xor al, 34
or sil, cl
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
or al, dl
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
