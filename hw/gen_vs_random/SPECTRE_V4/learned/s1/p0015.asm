.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 123
movzx dx, dl
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 11
dec rdx
neg bx
xor rsi, rdi
cmp dil, -124
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], dx
cmovp ax, di
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
cmovle si, si
inc edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add al, 112 # instrumentation
setl dl
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
test al, sil
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add eax, edx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
add di, -74
add sil, 110
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
bt edi, ebx
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
adc bl, sil
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
adc si, 5
add rdi, rsi
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rbx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
add eax, -1796699558
bt ebx, 228
add si, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
