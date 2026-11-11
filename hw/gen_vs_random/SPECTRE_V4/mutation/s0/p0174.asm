.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ebx, 66
imul dx, cx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rax, 1827025056
movzx edx, al
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
btc rsi, 36
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
btc rdx, rsi
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
btr cx, 252
mul rdi
adc sil, -63
adc dl, al
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
xor cl, al
and ax, -6897
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
dec cx
and dl, dl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and dl, 24
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
neg cx
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
and al, -118
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
test rcx, rdi
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
bt rcx, rbx
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
xor ebx, -62
and rcx, -20
cmovnp rdi, rdx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
xor rsi, -3
dec ecx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
imul eax, edx
mov ax, 31802
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
movsx ebx, bl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
mov al, al
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
