.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
cmovnb rbx, rcx
movsx esi, si
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
bt rbx, rbx
and cl, al
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and bx, bx
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
xor al, 118
mov sil, cl
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 92
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
sbb cl, 45
xchg bl, cl
sub rax, 1914398062
sub dl, cl
imul cx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
cmp al, -106
bts di, si
test sil, dl
movzx si, cl
imul rcx, rsi, -43
btc edx, ebx
cmp dil, 101
mul si
movsx ax, bl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
bt ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or al, al
or rdi, rax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -9
xor dil, -23
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
