.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
add cl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
movzx cx, sil
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rax]
or dl, bl
xchg edi, ebx
sub ax, 56
jmp .bb_0.1
.bb_0.1:
add edi, esi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
mov cl, cl
test eax, 53
imul rcx, rdi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
