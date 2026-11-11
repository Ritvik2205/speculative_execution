.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 45
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
dec di
xor rdi, rdx
test al, sil
btc cx, 240
dec cl
setnz bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
lea rbx, qword ptr [rbx + rdx + 63]
add al, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
sub al, dil
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 92
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 4
cmovs rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
bt edx, eax
adc al, 36
and dil, al
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
cmovnbe ebx, ecx
sub bl, bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 17
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
movzx ecx, bl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt esi, edi
add dl, -99 # instrumentation
not ecx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
test rcx, -2118888343
adc bl, dl
test dil, 65
sbb al, cl
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 90
not si
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
sub cl, dl
sbb eax, 1081973675
bts edx, edx
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
add eax, -1796699558
and rdx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
cmp bl, dil
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
