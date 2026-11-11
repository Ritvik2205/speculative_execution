.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 51
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 23
add eax, -1796699558
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 49
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 6
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
xor sil, al
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
movsx ebx, di
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
add sil, 26
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
imul dx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 50
dec sil
cmovnle rbx, rbx
btc bx, 89
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
movzx eax, al
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
add dl, dil
imul dx
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 63
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
movzx esi, dl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
imul cl
and al, -36
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
xor ebx, edi
cmp ax, -15409
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
