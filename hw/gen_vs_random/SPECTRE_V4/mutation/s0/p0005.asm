.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bx, -31043
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
sub cl, -74
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
mov edi, -1544998000
sub al, bl
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
test al, cl
cmovnbe rax, rbx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
btr bx, cx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and dl, al
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
bt esi, 227
movsx edi, bx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
xor di, -43
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
adc al, dl
cmovnp di, bx
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
sub al, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
test rax, -331426050
cmovns rbx, rax
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rbx, 69
sbb cl, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
