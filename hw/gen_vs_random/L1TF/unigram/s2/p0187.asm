.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
inc rdi
add bl, 92 # instrumentation
sets al
movzx ecx, cx
xchg dl, dl
adc dx, 16
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
jmp .bb_0.1
.bb_0.1:
and bx, 93
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 69
add dil, -7
cmovnz ax, di
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edi
xor dl, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
