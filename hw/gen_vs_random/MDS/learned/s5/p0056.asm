.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
or bl, cl
and bx, 81
xor cl, 15
or al, 54
and dl, cl
test al, bl
or sil, -49
test al, -81
test sil, dil
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
or bl, al
and al, -114
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
