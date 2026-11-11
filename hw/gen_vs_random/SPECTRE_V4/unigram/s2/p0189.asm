.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
imul ecx
cmovbe di, di
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
xchg rax, rsi
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
or rcx, 83
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
cmp sil, 113
xor bl, 126
imul esi
cmovs rsi, rbx
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
or esi, 32
cmp rsi, rax
cmovnb dx, dx
sub esi, -10
btr di, 245
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
bt cx, si
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], dx
mov dl, 81
btc ecx, 201
adc rsi, 82
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdi
cmovs edi, eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
cmovno rcx, rsi
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
dec ecx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rax
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
movzx dx, dl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 56
cmp dil, al
or rcx, 72
cmp dil, sil
btr rdx, rsi
cmovb ax, di
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
