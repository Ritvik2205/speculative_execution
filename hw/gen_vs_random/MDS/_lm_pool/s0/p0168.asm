.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and dil, 125
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
or sil, -78
or dil, -71
test dl, 9
bt ebx, ecx
or al, -78
xor bl, -88
btr ecx, esi
test cx, di
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
