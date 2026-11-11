.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rax
neg dil
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 94
adc esi, 90
xor bx, 64
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
or si, 83
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
xor bl, dl
add al, 110 # instrumentation
movsx dx, al
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe eax, ecx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 75
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
cmovns bx, si
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
movzx rsi, ax
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
add bl, cl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
test bl, sil
movzx eax, sil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
sub ecx, ebx
or ax, bx
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 8
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
btc ax, bx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 63
cmovs dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
