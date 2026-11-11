.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
bt esi, 227
cmovnbe rax, rbx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
sub al, dl
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
xor di, -43
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
sub al, bl
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
cmovns rbx, rax
movsx edi, bx
sbb cl, 19
and dl, al
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
mov edi, -1544998000
test rax, -331426050
mov bx, -31043
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
test al, cl
adc al, dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
sub cl, 116
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
xchg ecx, eax
and rbx, 110
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
cmovnp di, bx
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
btr bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
