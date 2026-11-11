.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
cmovbe rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
imul rdx, rbx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
xor bx, di
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
cmovnl bx, ax
cmp cl, -105
and eax, -2001076187
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
cmovnbe edi, ecx
cmovnb esi, ebx
xchg cx, si
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
mov al, 125
or bl, -86
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovnle bx, ax
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
xor dl, -123
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
add dl, dl
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
sbb rcx, -73
adc rax, 1873854064
or si, 85
test ax, 2960
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 848492318
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
test eax, 1947430392
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
btc rdx, rsi
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
bt rax, 59
cmovnb dx, di
not eax
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
