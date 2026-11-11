.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
or rsi, rbx
bswap eax
cmovl si, si
btc edx, 165
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
or sil, dil
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and al, sil
cmovnb rdi, rcx
cmovle rax, rbx
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
cmovnbe rsi, rdi
add al, sil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
cmovl ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
or al, bl
sub ebx, edx
test al, 18
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
inc sil
btc rax, rax
or al, al
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 50
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
add cl, -84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
cmp rdi, 28
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 81
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 94
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
neg eax
and bl, bl
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
cmp bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
