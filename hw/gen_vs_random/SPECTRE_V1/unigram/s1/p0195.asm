.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
inc al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
lea rax, qword ptr [rcx + rbx + 51]
and cl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ecx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
add al, -55 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
lea bx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
movsx rbx, si
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
setnb dl
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
