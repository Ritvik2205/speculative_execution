.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, 59
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
cmovnle bx, ax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
cmovnb dx, di
cmovnbe edi, ecx
cmovnb esi, ebx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
and eax, -2001076187
xchg cx, si
test eax, 1600638830
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
or si, 85
mov al, -114
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 848492318
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
add dl, dl
not eax
sub al, cl
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
cmp cl, 100
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
adc rax, 310915511
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
or bl, -99
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
btc rdx, rsi
xor dl, -66
xor bx, di
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
cmovbe rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
sbb rcx, -73
imul rdx, rbx
cmovnl bx, ax
test ax, 2960
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
