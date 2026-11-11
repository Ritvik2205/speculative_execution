.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 71 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
test rdx, 1657596343
add dil, -75
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
test eax, 88788211
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor bx, 47
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
cmovp cx, si
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
add bl, -76 # instrumentation
cmovnle cx, dx
cmovz edi, ecx
imul rdi
add al, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
