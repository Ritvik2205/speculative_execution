.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and si, -121
test dil, -80
xor rax, -1657511731
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
test dil, sil
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or al, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
xor cl, bl
and rax, -1931765367
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or rsi, 16
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
