.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 44 # instrumentation
cmovns si, ax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
sub dil, 87
lea rdx, qword ptr [rcx + rdi]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
lea dx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
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
