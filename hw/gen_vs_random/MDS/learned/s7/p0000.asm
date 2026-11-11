.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
xor dil, -124
not sil
and bx, 47
xor al, cl
or bl, -62
test dl, 27
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
xor sil, -46
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
bt bx, cx
or ax, -7150
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
