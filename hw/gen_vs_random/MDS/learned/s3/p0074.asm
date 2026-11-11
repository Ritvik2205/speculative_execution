.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
btc dx, 38
add bx, 30
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
btr rdx, 194
jmp .bb_0.2
.bb_0.2:
and cx, di
cmovb rcx, rdx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
and bx, ax
adc al, 46
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
test al, -59
xor cl, cl
cmp al, 4
and sil, 65
cmovns dx, dx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rsi
cmovz rbx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
lea ebx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
