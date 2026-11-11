.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe si, ax
and rdx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
cmovb rsi, rbx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
or bl, 66
add cl, cl
not dx
or ecx, esi
cmovnp rdx, rdx
sbb bl, bl
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rcx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor sil, 56
cmovb rax, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovl rcx, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
cmovnp edx, edx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmovz bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], eax
adc eax, -79
imul cl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
test bx, -1599
or sil, bl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
xor bl, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
or al, bl
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
add rdx, rsi
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
dec rcx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rcx
or bl, 79
sbb rdx, 10
add ebx, 3
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
bts ebx, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
