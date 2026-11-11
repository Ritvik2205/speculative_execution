.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rcx
add al, al
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
jmp .bb_0.1
.bb_0.1:
add dl, -56 # instrumentation
cmovs rsi, rdi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
lea rcx, qword ptr [rcx + rax]
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
cmovp di, dx
imul rdx, rsi, 87
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
add bl, 93 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], -15
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rsi
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
lea rdi, qword ptr [rsi + rax + 41973]
and sil, 37
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
imul si, cx, 27
and bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
btr esi, ecx
add bl, -79 # instrumentation
cmovo cx, di
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -64
add bl, 111 # instrumentation
cmovs rcx, rcx
bswap rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
