.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -117
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dil
neg edx
add sil, sil
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdx
cmp ecx, 43
or cl, cl
test bl, bl
btc esi, 63
and bx, bx
cmp sil, -100
add bl, al
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
imul cx, dx
and rdi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and sil, -84
bts rdi, 23
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
mov cl, 1
or bx, -33
and dx, dx
xor rcx, -111
and dil, cl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
bt rdx, 29
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
cmovs bx, di
and dil, -120
sub cl, al
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
cmovs bx, di
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
and ebx, -122
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovp ebx, eax
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
movsx ecx, bx
cmp dil, -29
or rsi, rdi
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
add dl, -85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
