.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov edi, -1544998000
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and dl, al
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
movsx edi, bx
cmovns rbx, rax
btr bx, cx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
xor di, -43
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
sub al, dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
cmovnbe rax, rbx
sub al, bl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
sbb cl, 20
cmovnp di, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
adc al, dl
test al, cl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
test rax, -344032571
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rbx, 69
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
sub cl, -74
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
xchg ecx, eax
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
mov bx, -31043
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
bt esi, 227
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
