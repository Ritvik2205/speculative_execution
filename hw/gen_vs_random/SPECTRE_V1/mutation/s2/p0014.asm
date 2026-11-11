.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
cmp rax, -1365488374
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
movzx ebx, ax
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
adc ax, 24404
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
xor al, -42
setnp al
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
sub dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
