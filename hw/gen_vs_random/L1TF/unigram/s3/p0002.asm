.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 105
and bl, dil
lea rcx, qword ptr [rbx + rdi + 68]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
btr eax, edi
test rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovnp edi, eax
adc ax, si
xor di, 61
add dl, 85 # instrumentation
cmovp ax, ax
imul rcx, rdi
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 52
and dl, dl
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
