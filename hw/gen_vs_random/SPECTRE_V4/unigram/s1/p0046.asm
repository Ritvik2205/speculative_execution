.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 19
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
btr cx, dx
and dil, al
cmovb edx, edx
bt eax, 84
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
test eax, edx
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
inc ebx
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
neg rax
sbb cx, 23
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
movsx ecx, ax
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
sbb eax, 1081973675
inc ebx
cmovnbe rdx, rbx
sbb edx, 63
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
add dl, -10 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
sbb sil, 108
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
btc dx, ax
xor bl, 93
and rdi, -2
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
mov sil, 45
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sbb dil, bl
and rcx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rcx]
xor cl, -101
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
imul dx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
movsx rcx, dl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
sub ebx, edi
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 27
add al, al
bts edx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
