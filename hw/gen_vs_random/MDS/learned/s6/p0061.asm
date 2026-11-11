.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
xor bl, cl
and dl, bl
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and sil, al
xor bl, -102
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
xor ax, -16696
test dl, -85
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
xor dil, -5
or cl, dl
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
