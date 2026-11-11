.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl bx, ax
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
xor dl, -123
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
adc rax, 519150753
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
test ax, -6841
cmovbe rdx, rbx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
bt rax, 59
sub al, cl
sbb rcx, -73
add dl, dl
btc rdx, rsi
imul rdx, rbx
and eax, -1145483375
or bl, 111
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
xchg cx, si
cmovnb dx, di
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
not eax
cmovnbe edi, ecx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
xor bx, di
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
cmovnb esi, ebx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
or si, 85
cmp cl, 100
cmovnle bx, ax
test eax, 1947430392
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
mov al, 125
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
