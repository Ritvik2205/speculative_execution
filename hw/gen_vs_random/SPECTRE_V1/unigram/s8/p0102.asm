.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
cmp dil, -78
adc di, 95
cmovnz dx, ax
lea rdi, qword ptr [rdi]
sbb ecx, 20
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
add dl, 38 # instrumentation
setp al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 38
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
test eax, 88788211
add dl, 38 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
