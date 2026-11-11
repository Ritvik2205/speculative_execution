.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 1189904463
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, dl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
adc ax, -27488
xor al, -74
movzx ebx, ax
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
setnp al
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
