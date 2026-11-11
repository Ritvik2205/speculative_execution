.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -106 # instrumentation
cmovno rsi, rdx
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 80
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
dec bl
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
test cl, -119
cmovns ax, di
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
imul bl
xchg cx, si
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
mov edi, 412386591
cmovnz rax, rdx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 67
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
test al, 52
mov sil, 78
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], esi
inc bx
cmp rax, 2096656187
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 71
cmp rdi, 28
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
xchg dil, bl
and rsi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rsi]
btc rax, rax
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
sub dl, bl
add rcx, rcx
and rdi, 45
add dl, dl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 50
cmp al, bl
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi]
test cl, dl
add al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
