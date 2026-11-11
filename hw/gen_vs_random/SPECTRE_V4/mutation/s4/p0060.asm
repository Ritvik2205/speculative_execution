.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
bt rax, 59
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
adc rax, 1873854064
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
sub al, cl
cmovnl bx, ax
or bl, 111
add dl, dl
cmovnbe edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
test eax, 1340292467
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
cmovnb dx, di
xor bx, di
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
or si, 85
xchg cx, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1913246407
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
cmovnb esi, ebx
not eax
xor dl, -66
sbb rcx, -73
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
cmovbe rdx, rbx
test ax, -6584
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
imul rdx, rbx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
cmp cl, 107
mov al, -71
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovnle bx, ax
btc rdx, rsi
and eax, -1056713114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
