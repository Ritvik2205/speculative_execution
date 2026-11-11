.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, di
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or al, 54
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
xor dil, 81
and al, 35
jmp .bb_0.1
.bb_0.1:
or al, bl
xor cl, dil
test esi, 425331143
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
