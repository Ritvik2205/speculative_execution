.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rbx, rbx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
cmovnle rdi, rdi
btr dx, si
movzx edx, cl
sub rsi, 26
add bl, -18 # instrumentation
mov rsi, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
add bl, -115 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 2
bt eax, ebx
xor si, 42
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
cmovnp si, ax
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
sub dil, al
test di, dx
and rbx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rbx]
add cl, -82 # instrumentation
sbb ax, di
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
or bl, 33
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and cl, bl
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
xchg eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
cmp rdi, 12
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
cmovb eax, eax
not rdx
movzx ebx, sil
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
test si, 19
sbb dil, al
sub dil, dil
sub bl, al
adc rsi, 94
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
sub edx, eax
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
