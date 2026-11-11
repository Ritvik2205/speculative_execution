.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -119 # instrumentation
sbb ecx, 18
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
xor dil, dil
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
test al, cl
or bl, dil
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
add bl, -18 # instrumentation
cmovs ax, cx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
imul dl
add dil, dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
neg cl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1913246407
cmovz rcx, rbx
bts edx, edx
and edx, 92
and al, al
cmovbe eax, ecx
and dx, -107
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
cmovnl bx, di
dec dl
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dil, al
add cl, -65 # instrumentation
adc dl, cl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
sbb al, sil
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
imul edx
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
movsx cx, al
and cl, dl
cmovnz bx, cx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
