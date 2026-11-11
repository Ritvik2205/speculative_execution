.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
test eax, -251558852
xchg cx, si
not eax
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
sbb rcx, -73
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
add dl, dl
mov al, -71
xor dl, -123
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
bt rax, 59
btc rdx, rsi
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
cmp cl, 107
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and eax, -2040347881
cmovnl bx, ax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
cmovnb esi, ebx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
imul rdx, rbx
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovnle bx, ax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
cmovnb dx, di
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
test ax, -6841
cmovnbe edi, ecx
xor bx, di
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
cmovbe rdx, rbx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
or si, -84
or bl, 111
adc rax, 2071185388
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
