.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, ax
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
test al, -7
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and bx, 43
and al, 84
or dil, -76
and rdx, 50
jmp .bb_0.1
.bb_0.1:
test dl, cl
or bl, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
or esi, -110
xor cl, 55
xor sil, -14
or rdx, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
