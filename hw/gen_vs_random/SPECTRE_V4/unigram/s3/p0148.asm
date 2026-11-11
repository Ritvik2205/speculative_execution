.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 65
inc rsi
imul cl
sbb di, -76
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
cmovo bx, cx
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
cmovnle si, si
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or bl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
imul bx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
sub al, 50
xor bl, 93
imul si, dx
imul bx
sub edi, eax
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or ecx, 93
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
cmp dx, 74
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
bswap esi
imul ax, di
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
xor sil, 56
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmp al, sil
add cl, 106 # instrumentation
cmovnp rax, rsi
neg sil
sub ebx, 61
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
cmovnbe rax, rdi
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
xchg rax, rdx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
or bx, di
adc rbx, 31
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
