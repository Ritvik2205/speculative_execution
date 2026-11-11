.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
xor dl, al
xor sil, -14
xor dl, -43
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
or dil, sil
or ax, 85
or sil, bl
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
xor cl, dil
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
