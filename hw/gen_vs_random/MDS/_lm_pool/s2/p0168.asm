.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 46
test rcx, -613256812
or dl, cl
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and al, bl
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
or al, 25
test cl, -123
or sil, al
test rcx, -613256812
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
test dl, dil
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and cl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
