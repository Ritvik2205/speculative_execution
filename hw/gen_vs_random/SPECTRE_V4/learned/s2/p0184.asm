.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 123
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
xor al, 69
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sbb ax, -26881
test edx, 573099753
imul esi, edx, 69
movsx rdx, dil
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovz eax, edx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
adc dx, 42
inc rsi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnb rdx, rax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
cmovnbe ebx, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
cmovnp ecx, esi
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
mul cl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
sub ecx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
cmovnbe rbx, rdi
adc bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
cmovb edx, eax
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 89
add rdi, rdx
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
movsx di, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
