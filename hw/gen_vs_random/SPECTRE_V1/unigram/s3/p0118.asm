.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, -115
add dl, -124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
test dil, sil
cmp cl, 3
add bl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
xor rcx, 5
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
setnb cl
test bl, sil
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 9
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
xor rax, 1636804787
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
