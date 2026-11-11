.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rcx, rbx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
neg cx
and ax, 62
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
btr cx, 252
adc dl, al
movzx edx, al
btc rsi, 36
mov ax, 31802
xor ebx, -62
and rcx, 29
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
mov al, al
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
mul rdi
cmovnp rdi, rdx
dec cx
imul dx, cx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
xor rsi, -3
adc sil, -31
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
xor cl, al
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
and al, -118
movsx ebx, bl
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
adc ebx, 66
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
test rcx, rdi
and dl, 126
and dl, dl
btc rdx, rsi
and rax, 1827025056
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
dec ecx
imul eax, edx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
