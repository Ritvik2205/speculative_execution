.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 21
xor sil, 64
xor rdx, 122
bts edi, eax
jmp .bb_0.1
.bb_0.1:
imul rbx
sub bl, -96
sbb sil, cl
add ax, 32140
cmp ax, -14781
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
