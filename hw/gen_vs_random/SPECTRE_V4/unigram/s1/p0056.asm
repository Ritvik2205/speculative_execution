.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rdx, rsi
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], dx
sub al, 96
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 96
and eax, -1056713114
add rbx, rdx
or rsi, 73
adc cx, 60
add ebx, -57
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
test eax, 1600638830
btr di, 245
adc dil, al
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
cmovb bx, di
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -3291
bt ecx, 25
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
mov eax, -1056201206
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 4
and esi, edx
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
mov ecx, -405458789
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
cmovz esi, eax
and bl, bl
sub dl, -16
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edi
adc eax, -60
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 86
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
sub dil, al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 9
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
cmovs rdx, rcx
or bx, bx
bts bx, cx
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rcx]
mov dil, dl
xor cx, -80
and dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
