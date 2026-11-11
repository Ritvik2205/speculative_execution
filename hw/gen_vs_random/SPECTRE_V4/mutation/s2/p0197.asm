.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
xor ebx, -62
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
adc ebx, -5
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
btc rsi, 97
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and dl, dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and dl, -11
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
xor cl, al
cmovnp rdi, rdx
and rcx, 29
imul eax, edx
adc sil, 111
neg cx
mul rdi
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
dec cx
and ax, 25163
adc dl, al
btr cx, 252
and rax, -779592432
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
test rcx, rdi
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
movzx edx, al
mov al, al
imul dx, cx
mov ax, 31802
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
movsx ebx, bl
btc rdx, rsi
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
and al, 100
bt rcx, rbx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
dec ecx
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
xor rsi, -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
