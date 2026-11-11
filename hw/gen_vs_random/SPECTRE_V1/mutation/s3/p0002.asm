.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 104
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
sub dl, -12
sbb dil, -93
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
neg rdi
add sil, dl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
or sil, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
