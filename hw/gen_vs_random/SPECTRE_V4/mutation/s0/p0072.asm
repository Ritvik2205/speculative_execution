.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 69
sbb cl, 19
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
movsx edi, bx
and dl, al
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
sub al, bl
test rax, -331426050
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
xor di, -43
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
adc al, dl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
sub cl, -74
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
cmovnp di, bx
cmovns rbx, rax
mov edi, -1544998000
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
test al, cl
mov bx, -31043
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
xchg ecx, eax
sub al, dl
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
cmovnbe rax, rbx
btr bx, cx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
bt esi, 227
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
