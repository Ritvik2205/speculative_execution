.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -9
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
test edx, -1561252782
test bl, -9
or sil, sil
jmp .bb_0.1
.bb_0.1:
and esi, 11
btc bx, 58
or al, 16
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
not al
and sil, 89
or cl, 119
test bl, cl
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
