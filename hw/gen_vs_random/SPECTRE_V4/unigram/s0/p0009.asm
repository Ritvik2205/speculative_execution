.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
cmp al, sil
test si, 67
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
cmovp rcx, rdx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
cmp dl, cl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
sub ecx, -107
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdi
mov sil, dl
and rdx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
test al, 115
cmp ecx, edx
mov dl, bl
and rcx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rcx]
cmp bl, bl
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
cmovnb di, cx
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
or di, 0b1000000000000000 # instrumentation
bsf bx, di
add dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
btc edi, 125
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
sub bl, sil
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
sbb bl, bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
xor rcx, 112
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
btr bx, 11
adc ecx, 114
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
add cx, cx
and rsi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rsi]
sub bl, 66
cmovnz ecx, edi
imul cx, si
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
