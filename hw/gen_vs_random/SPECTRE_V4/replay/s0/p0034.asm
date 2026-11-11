.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
bt rcx, rbx
xor cl, al
mov al, al
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and al, -12
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
mul rdi
test rcx, rdi
adc sil, -112
movsx ebx, bl
and rax, 37
cmovnp rdi, rdx
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
dec ecx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
and ax, -14374
and dl, -11
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
imul dx, cx
and dl, dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
adc ebx, 51
xor ebx, -62
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
btr cx, 252
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
neg cx
btc rsi, 36
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
adc dl, al
xor rsi, -3
mov ax, 31802
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
movzx edx, al
dec cx
imul eax, edx
btc rdx, rsi
and rcx, -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
