.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], al
and rax, rax
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
sub bl, dl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, dil
add al, -53 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 53
btc dx, di
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 52
xor dil, -37
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 77
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 40
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
