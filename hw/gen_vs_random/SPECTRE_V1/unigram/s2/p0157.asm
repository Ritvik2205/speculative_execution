.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
imul edi, eax
cmp cl, cl
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
lea ebx, qword ptr [rcx + rax + 5]
cmp al, al
cmp bl, al
add eax, -1265007362
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
mov cl, dl
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
cbw
lea rax, qword ptr [rdx + rdi]
cmovs ax, dx
lea rax, qword ptr [rbx]
setnb dl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
