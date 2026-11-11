.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
sub eax, 2030845821
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 8
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 76
cmovs ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
sbb dl, bl
and dl, dil
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
btc rcx, rax
and rdi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdi]
adc dl, cl
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 14
neg cx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add dl, dl
and dl, cl
and rcx, -102
mul edx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
adc bl, al
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
or dl, dl
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
test rcx, -2118888343
movzx cx, dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test al, 80
cmovb edx, eax
movsx rsi, bx
mov al, 30
cmovb di, di
bts rsi, rsi
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
