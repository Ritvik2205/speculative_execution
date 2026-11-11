.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
adc sil, 77
adc dl, al
cmovnp rdi, rdx
bt rcx, rbx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
xor rsi, -102
mov al, al
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
mul rdi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
btr cx, 252
and ax, -12738
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and al, 59
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
dec cx
movzx edx, al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
and rcx, -20
imul eax, edx
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
mov ax, 31802
btc rsi, 97
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and dl, -104
xor cl, al
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
xor ebx, 40
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
imul dx, cx
and rax, -779592432
movsx ebx, bl
dec ecx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
btc rdx, rsi
and dl, dl
neg cx
test rcx, rdi
adc ebx, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
