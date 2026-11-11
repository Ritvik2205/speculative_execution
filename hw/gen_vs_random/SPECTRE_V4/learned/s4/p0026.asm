.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rax, -8696242625349627833
sbb dl, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 30
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
xor ecx, edi
sbb dl, cl
lea rbx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
xor bx, si
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 66
setnle dil
or dl, dl
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
movzx rax, bl
mov rsi, 67
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdx]
btc ax, dx
xchg ecx, esi
xor bl, dl
imul rdi, rbx, 51
imul ax, di, 41
add edx, eax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmovnl rbx, rdx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
cmp bl, bl
cmp ax, -906
test bx, ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
btc dx, 119
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rdi, -2
cmp rax, 1524061352
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
