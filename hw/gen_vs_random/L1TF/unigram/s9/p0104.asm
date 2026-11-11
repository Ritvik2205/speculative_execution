.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz esi, edx
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
test rdi, 62
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 21
adc cl, -34
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rax
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
