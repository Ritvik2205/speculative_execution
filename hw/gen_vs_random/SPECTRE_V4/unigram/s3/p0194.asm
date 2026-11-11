.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdi]
and rcx, -102
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
imul cl
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rax
add dl, -99 # instrumentation
not ecx
neg rbx
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
cmovle rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 94
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
movzx bx, bl
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], bx
adc cl, al
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 46
cmovnp rdx, rdx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
cmovnbe rdx, rcx
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
cmovns dx, di
and al, dil
sub bl, 17
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 92
sbb ebx, 24
sub eax, ecx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe eax, ebx
btc dx, 119
xor dl, bl
cmovo edi, edx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], cx
sbb rbx, rax
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 8
test cl, sil
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
adc edx, 53
or edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
