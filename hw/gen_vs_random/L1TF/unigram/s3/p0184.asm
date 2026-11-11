.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
test ax, dx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
xor al, 45
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovb ecx, edx
add cl, cl
adc bx, dx
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 50
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
sbb ebx, 9
add cl, -75 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
