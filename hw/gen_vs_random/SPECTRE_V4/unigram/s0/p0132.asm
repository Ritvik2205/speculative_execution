.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 65
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
neg rbx
or dl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
cmovz di, ax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
btc di, 83
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
adc dil, dil
not bl
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
add dl, -25 # instrumentation
cmovs rbx, rcx
and rdx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
add sil, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 85
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
adc esi, 19
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
xor cl, 88
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], dx
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 53
cmp al, -116
add rdx, 67
cmp edi, 3
cmovnb ecx, edi
or sil, -47
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
cmp dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
