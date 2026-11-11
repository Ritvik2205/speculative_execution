.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
or dl, dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
test cl, 73
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
or ax, -6817
or dil, -78
not sil
and eax, 454700988
xor sil, -14
and bl, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
