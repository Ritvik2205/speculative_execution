.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rax, cx
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
movzx rsi, cl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
adc al, -58
add bl, -109 # instrumentation
sbb eax, -2052726562
add bl, -109 # instrumentation
sbb eax, -2052726562
not rax
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 50
movsx rcx, bl
test cl, al
sub rdi, 76
sub al, 98
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
cmovb ecx, eax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 13
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
or bx, ax
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 76
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
sbb dil, 39
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
xor bl, 93
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
sub esi, 34
test cl, sil
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 50
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
mul cl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
and rax, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rax]
inc ebx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
not bx
xor cl, dil
cmovle ecx, edx
neg cl
cmovo cx, ax
and rax, 10
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 4
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
