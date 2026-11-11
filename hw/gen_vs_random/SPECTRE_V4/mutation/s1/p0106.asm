.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -74
adc al, dl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and dl, al
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
sbb cl, 20
movsx edi, bx
xor di, -43
test al, cl
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
btr bx, cx
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
cmovnp di, bx
sub al, bl
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
mov edi, -1544998000
sub al, dl
test rax, -344032571
cmovnbe rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
mov bx, -31043
bt esi, 227
xchg ecx, eax
cmovns rbx, rax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rbx, 110
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
