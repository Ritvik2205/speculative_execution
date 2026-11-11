.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
cmovnz ax, di
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
bt bx, 47
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
sbb ax, di
imul edi, edi, 95
jmp .bb_0.1
.bb_0.1:
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
cmp cl, 57
inc rdi
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 90
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
add al, 36 # instrumentation
lea edi, qword ptr [rdi + rax + 98]
imul rbx, rsi, 62
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
