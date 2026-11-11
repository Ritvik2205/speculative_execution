.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
or esi, ebx
xor al, -89
test esi, 425331143
test rsi, 57
btr dx, di
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
test al, sil
and cl, -6
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
or cl, 119
test al, dl
test cl, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
