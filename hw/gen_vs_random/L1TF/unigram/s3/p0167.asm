.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 9
xor rax, 20
not ax
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
or ecx, eax
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
add bl, 92 # instrumentation
sets al
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
add bl, -54 # instrumentation
setz dil
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edx
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
imul ax, si
bswap rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
