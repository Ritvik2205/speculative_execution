.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rdi
and al, 82
imul eax, edx
xor cl, al
movsx ebx, bl
test rcx, rdi
and ax, -6897
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
btc rsi, 77
and dl, dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
imul dx, cx
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
btr cx, 252
mov al, al
adc dl, al
adc sil, -2
movzx edx, al
cmovnp rdi, rdx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
btc rdx, rsi
mov ax, 31802
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
xor ebx, -62
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and dl, -11
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
dec cx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
xor rsi, -102
bt rcx, rbx
adc ebx, 66
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rcx, 11
neg cx
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
dec ecx
and rax, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
