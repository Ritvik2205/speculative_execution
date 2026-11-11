.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
test rax, -344032571
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
sub cl, -74
and dl, al
sub al, dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
mov edi, -1544998000
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
sub al, bl
cmovnp di, bx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
bt esi, 227
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rbx, 110
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
xchg ecx, eax
cmovns rbx, rax
test al, cl
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
cmovnbe rax, rbx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
mov bx, -31043
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
btr bx, cx
xor di, -43
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
movsx edi, bx
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
sbb cl, -104
adc al, dl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
