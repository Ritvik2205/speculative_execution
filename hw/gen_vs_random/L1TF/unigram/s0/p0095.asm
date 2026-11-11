.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
cmp edi, edi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
add rcx, 85
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
btc esi, eax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
lea esi, qword ptr [rdi]
cmp eax, 39856325
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
add eax, esi
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
xor dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
