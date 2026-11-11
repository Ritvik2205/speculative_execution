.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
add bl, bl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 47
or cl, 97
cmovl eax, edi
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], bx
add cl, al
imul ebx, ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor rdx, 16
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
test si, 44
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
sets dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
