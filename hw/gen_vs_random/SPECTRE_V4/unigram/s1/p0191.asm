.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, sil
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], di
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
cmovp rcx, rdx
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 63
cmp bx, 83
imul dx
imul bx, si
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
imul cl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
adc al, -58
test rax, -344032571
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 3
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovl rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 24
movsx esi, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
add dl, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
sub sil, sil
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
or si, 94
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
cmp rax, -227205962
cmp rdx, 33
xor edx, ebx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
cmovnl rcx, rcx
bts edi, eax
test edi, -1249897727
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 95
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 7
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
sbb bl, dl
cmp ax, di
test bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 69
cmovnbe si, bx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
