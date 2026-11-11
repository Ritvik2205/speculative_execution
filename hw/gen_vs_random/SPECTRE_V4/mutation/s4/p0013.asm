.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, -104
xor di, -43
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
btr bx, cx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
bt esi, 227
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
mov edi, -1544998000
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
test al, cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
movsx edi, bx
sub al, dl
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
sub cl, -74
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
sub al, bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
mov bx, -31043
and rbx, 69
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
test rax, -331426050
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
adc al, dl
cmovnp di, bx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and dl, al
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
cmovnbe rax, rbx
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
cmovns rbx, rax
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
