.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb esi, ebx
cmovnle bx, ax
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
or si, -84
cmovnb dx, di
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
or bl, 61
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
imul rdx, rbx
cmovbe rdx, rbx
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
sub al, cl
test eax, -251558852
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
xor dl, -123
sbb rcx, -73
not eax
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
add dl, dl
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
cmovnl bx, ax
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
xchg cx, si
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
mov al, -71
adc rax, -827748523
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
cmp cl, -80
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
bt rax, 59
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovnbe edi, ecx
test ax, -18054
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
btc rdx, rsi
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 848492318
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
xor bx, di
and eax, -1237519395
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
