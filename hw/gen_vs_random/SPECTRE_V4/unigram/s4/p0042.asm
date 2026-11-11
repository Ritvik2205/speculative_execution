.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, 116
imul cl
xchg dil, dil
adc dx, 23
or di, bx
imul rdi
adc bl, al
sbb al, cl
add bl, 38 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
or bl, 27
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, edx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
add al, 122 # instrumentation
cmovns esi, edi
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 24
test esi, 67
cmp esi, 8
add cx, 91
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
adc cl, 67
and sil, -49
bts rbx, 64
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rsi]
test edx, 573099753
adc eax, -1513455903
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
add eax, -1796699558
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
cmovle edx, eax
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
cmovl rax, rdi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 91
cmovns cx, dx
or rbx, rdx
cmovp ebx, ebx
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 64
inc edx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
imul bx, si
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
sub bx, cx
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
test sil, bl
xchg rbx, rdx
test al, al
add al, 122 # instrumentation
cmovns edi, edx
and rsi, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
