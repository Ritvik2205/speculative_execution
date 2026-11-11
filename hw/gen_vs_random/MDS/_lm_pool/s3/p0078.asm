.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or bl, -54
xor cl, sil
jmp .bb_0.1
.bb_0.1:
test cl, bl
test dl, 9
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 51
test eax, 1729060510
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and cl, cl
test dil, 46
test bl, -9
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and ax, 31082
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
