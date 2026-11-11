.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 104
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
sbb dil, -93
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
sub dl, 71
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
add sil, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
or sil, 34
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
neg rdi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
