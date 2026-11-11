.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ecx, 99
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
cmovl rdi, rax
or bx, -33
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rcx
sbb sil, 24
add dl, -12 # instrumentation
cmovp edi, ecx
adc dl, 15
bswap ecx
cmp rcx, -121
cmp dil, bl
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
movsx edi, sil
imul rsi, rdx
cmp dl, 45
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
xor bl, -126
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
add cl, 9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
adc cl, -86
mov rdx, -3284511739993892328
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rbx
inc cl
adc dil, dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
or bl, 80
bts ebx, ebx
and dx, si
or esi, 32
and ebx, -122
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
cmovnb di, bx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
bt bx, 95
add rdi, 111
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
sub rax, rsi
cmp bl, al
mov dil, dl
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
