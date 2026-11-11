.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc esi
bts edx, eax
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
cmovnz esi, edx
xor bx, 59
cmp cl, cl
dec edi
sbb rbx, 20
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
sbb si, 44
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
adc rax, rdi
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 24
movzx si, cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmp cl, dil
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -87
neg sil
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
and sil, sil
sbb edi, 107
imul di
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
sub eax, -638345541
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
imul sil
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
adc rbx, rdi
movzx rcx, ax
imul eax
sub sil, al
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
cmovle rax, rsi
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
add rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
xchg cx, cx
sub rbx, 101
cmovbe di, si
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
