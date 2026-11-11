.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
imul rdx, rcx
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
bt rdx, 131
mul rcx
jmp .bb_0.1
.bb_0.1:
cmovnz ax, ax
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
add cl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 80
cmovnbe rax, rsi
xor bl, -5
not rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
