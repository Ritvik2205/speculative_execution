.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
imul dx, cx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
dec cx
adc sil, -63
xor ebx, -62
xor rsi, -3
btc rdx, rsi
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
imul eax, edx
and rax, 86
cmovnp rdi, rdx
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
mul rdi
movsx ebx, bl
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
adc dl, al
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and al, -12
movzx edx, al
adc ebx, 51
and dl, dl
and ax, -12738
and dl, -104
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
and rcx, 29
test rcx, rdi
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
btr cx, 252
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
dec ecx
xor cl, al
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
neg cx
mov ax, 31802
bt rcx, rbx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
mov al, al
btc rsi, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
