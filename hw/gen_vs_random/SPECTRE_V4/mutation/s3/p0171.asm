.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
btc rsi, 36
and ax, -6897
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
btr cx, 252
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
adc sil, -31
dec ecx
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
movsx ebx, bl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
imul eax, edx
adc ebx, -55
btc rdx, rsi
mov ax, 31802
test rcx, rdi
xor cl, al
dec cx
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
xor ebx, -62
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and dl, 126
and rax, 1072797615
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
bt rcx, rbx
xor rsi, -3
mov al, al
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
cmovnp rdi, rdx
and dl, dl
movzx edx, al
and al, 92
imul dx, cx
and rcx, -20
adc dl, al
neg cx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
mul rdi
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
