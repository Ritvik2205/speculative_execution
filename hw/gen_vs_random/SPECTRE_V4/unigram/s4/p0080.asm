.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 81
adc al, 116
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
not rdx
bt rdx, 51
add bl, -43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
imul ecx
cmovz rax, rcx
cmp dil, bl
sub eax, ecx
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
btc rcx, rcx
bt edx, ebx
cmovl ax, dx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
cmp sil, -100
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 84
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
imul dil
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
not cl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
mov sil, sil
sub dx, -12
add rax, 1049076260
add si, 81
movsx ax, bl
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
bts edi, 16
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 34
cmp bx, 113
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
imul cx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and cl, -128
cmp cl, -105
not bx
mov eax, 1596316323
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and bl, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
