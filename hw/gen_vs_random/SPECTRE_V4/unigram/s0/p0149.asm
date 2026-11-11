.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, al
xor dil, dl
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
btc di, 55
inc eax
xor ecx, 86
test eax, -818909344
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 65
add bl, -72
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
cmovnp ebx, edx
add dl, -99 # instrumentation
not ebx
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 55
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 71
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
sbb bl, cl
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
cmp ax, -15409
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 30
not rbx
imul cl
sub dil, dl
bt eax, edx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 50
or dl, sil
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 14
xor al, 56
and rdi, -2
and rdi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdi]
sub edi, edx
or cx, di
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 69
sub dl, 43
or dl, cl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
cmp di, 39
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 56
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
