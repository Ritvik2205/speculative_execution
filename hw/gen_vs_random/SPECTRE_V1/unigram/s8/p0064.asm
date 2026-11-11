.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
bswap rbx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
adc di, 78
and rax, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rax]
dec cx
add al, -117 # instrumentation
not rax
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 66
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
mul si
dec dil
mov al, cl
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
