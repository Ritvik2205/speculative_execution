.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 125
or ebx, -104
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or sil, sil
not al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
cmovle si, ax
or al, 54
test al, 127
or cl, 6
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
test cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
