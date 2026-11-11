.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
or ebx, -78
test ecx, -304234347
cmovno ebx, edx
adc dil, al
add sil, 3
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
xchg sil, al
btr edx, 160
cmovl esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
sub al, cl
adc si, -74
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 9
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
add bl, 127 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
dec al
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
and dl, al
and al, dl
neg dl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 16
xor rax, -224991767
sub ecx, -107
xchg eax, eax
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
or bl, -86
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
test dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
