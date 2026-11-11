.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
imul rdx, rbx
btc rdx, rsi
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
xor bx, di
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
xor dl, -66
or bl, 111
cmovnl bx, ax
cmovnbe edi, ecx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
not eax
or si, -84
cmovnb esi, ebx
sbb rcx, -73
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
bt rax, 59
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
add dl, dl
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
test ax, 21107
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 848492318
cmovnle bx, ax
and eax, -1237519395
cmovbe rdx, rbx
mov al, 82
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
cmp cl, 100
test eax, 1340292467
xchg cx, si
cmovnb dx, di
adc rax, 253624080
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
sub al, cl
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
