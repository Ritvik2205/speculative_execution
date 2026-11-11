.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
mul rdi
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
imul eax, edx
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
xor ebx, 40
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
xor rsi, -102
and dl, -104
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
neg cx
dec cx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rcx, 29
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
imul dx, cx
mov ax, 31802
test rcx, rdi
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
btc rsi, 36
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
btr cx, 252
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and ax, 27239
and dl, dl
and rax, 1827025056
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and al, 41
movzx edx, al
adc ebx, -5
cmovnp rdi, rdx
adc sil, 77
adc dl, al
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
btc rdx, rsi
dec ecx
xor cl, al
bt rcx, rbx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
movsx ebx, bl
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
mov al, al
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
