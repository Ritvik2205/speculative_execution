.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
mov bx, -31043
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
test rax, -331426050
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
bt esi, 227
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmovns rbx, rax
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
sub cl, 116
sub al, bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
xchg ecx, eax
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
btr bx, cx
sub al, dl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rbx, 110
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
movsx edi, bx
cmovnp di, bx
and dl, al
mov edi, -1544998000
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
test al, cl
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
sbb cl, -104
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
adc al, dl
cmovnbe rax, rbx
xor di, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
