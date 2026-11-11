.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bx
and dil, bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add dil, -26 # instrumentation
btr edi, 82
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
btc bx, di
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 2
xor rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
test esi, 16
imul cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 65
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
or sil, 67
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
cmovz edi, esi
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
cmovle rdx, rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
adc edi, 6
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
sbb rbx, rax
cmovz esi, ebx
btc dx, 119
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
adc edx, 22
or sil, cl
test rax, -344032571
xor al, 56
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
test dl, 19
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
sub dl, dl
imul cx, di, 62
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
