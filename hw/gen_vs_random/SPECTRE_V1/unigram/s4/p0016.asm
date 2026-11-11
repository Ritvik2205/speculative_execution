.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
add cl, 22 # instrumentation
cmovns rsi, rdx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
movzx eax, sil
add bl, 7 # instrumentation
cmovnl eax, edi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 53
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ebx
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
movsx rdi, dl
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 83
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 34
add cl, 29 # instrumentation
setnb cl
xor dil, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
