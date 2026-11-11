.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
add rbx, rdx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rbx
cmovnbe rdx, rsi
mov rcx, rdx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
add dil, -84
and rdx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdx]
bts bx, 102
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
cmp ax, di
and rax, -779592432
mov bl, 58
adc dil, -15
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 40
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rcx
movzx esi, dil
xor eax, 550678097
and ax, dx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
cmp cl, 49
add dil, dil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
cmp rsi, 22
and cl, cl
cmp rdx, rax
cmovbe ebx, eax
and rdi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdi]
sbb di, -105
xor cl, bl
and rbx, 3
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and eax, edx
or dl, 71
cmovl si, cx
or bl, bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
