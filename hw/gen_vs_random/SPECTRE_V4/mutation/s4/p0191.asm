.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
sub al, dl
bt esi, 227
sub cl, -74
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and dl, al
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
cmovns rbx, rax
mov edi, -1544998000
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
xor di, -43
btr bx, cx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
sbb cl, 20
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
xchg ecx, eax
cmovnbe rax, rbx
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
test rax, -331426050
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
sub al, bl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
adc al, dl
and rbx, 69
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
movsx edi, bx
test al, cl
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
mov bx, -31043
cmovnp di, bx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
