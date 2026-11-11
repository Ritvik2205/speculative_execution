.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, -34
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 13
not dl
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
xor al, al
mov dil, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
bts ebx, 45
add ax, ax
add cl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 55
and sil, 37
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
cmp sil, sil
test di, dx
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
