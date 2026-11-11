.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 125
or esi, -110
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
test rbx, 24
and al, bl
xor cl, 55
or dl, 85
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
xor rax, 459999114
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and dil, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
