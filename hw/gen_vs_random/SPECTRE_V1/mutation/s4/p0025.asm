.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rdx
nop
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc bx, -112
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
inc cx
cmp cl, cl
adc bl, -76
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
add dl, 52 # instrumentation
sets dil
add bl, -104 # instrumentation
lea rbx, qword ptr [rdi + rax + 43013]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
