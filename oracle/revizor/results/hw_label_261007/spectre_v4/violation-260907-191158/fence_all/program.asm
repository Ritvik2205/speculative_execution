.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000 # instrumentation
lfence
and dil, 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
lfence
idiv di 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
add dword ptr [r14 + rdi], ebx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rbx], bl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sub byte ptr [r14 + rdi], 8 
lfence
cmovnp di, bx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rbx], 84 
lfence
sub al, bl 
lfence
sub cl, -74 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock bts word ptr [r14 + rax], 5 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
xor ebx, dword ptr [r14 + rdx] 
lfence
test al, cl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rsi], 23 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov word ptr [r14 + rdx], bx 
lfence
sub al, dl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sub dl, byte ptr [r14 + rsi] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock inc qword ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub qword ptr [r14 + rdx], 57 
lfence
and rbx, 69 
lfence
test rax, -331426050 
lfence
btr bx, cx 
lfence
movsx edi, bx 
lfence
and dl, al 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovs dx, word ptr [r14 + rbx] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor qword ptr [r14 + rcx], 120 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
neg qword ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sub esi, dword ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub rdx, qword ptr [r14 + rdx] 
lfence
cmovnbe rax, rbx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rdx], 96 
lfence
xchg ecx, eax 
lfence
sbb cl, -104 
lfence
bt esi, 227 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor qword ptr [r14 + rbx], rdx 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock add word ptr [r14 + rdx], dx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor cl, byte ptr [r14 + rbx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
inc word ptr [r14 + rcx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmp byte ptr [r14 + rax], cl 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock inc qword ptr [r14 + rsi] 
lfence
xor di, -43 
lfence
mov bx, -31043 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
imul dword ptr [r14 + rsi] 
lfence
adc al, dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
add dword ptr [r14 + rcx], -71 
lfence
mov edi, -1544998000 
lfence
cmovns rbx, rax 
lfence
or ecx, 1 # instrumentation
lfence
and edx, ecx # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div ecx 
lfence
add bl, 38 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovb ax, word ptr [r14 + rsi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
