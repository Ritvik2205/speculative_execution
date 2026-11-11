.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
cmp bl, sil
cmp al, 56
add ax, 32140
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
add ax, 1313
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
movzx ebx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
