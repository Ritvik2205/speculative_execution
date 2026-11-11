.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 86
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
mov dil, cl
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 25
cmovb ax, dx
sub al, cl
test si, 73
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
cmp dil, al
cmp si, 109
add al, -63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 57
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
xor rcx, 112
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
adc di, -78
sbb esi, 25
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
cmovnz rbx, rdi
sbb al, al
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
add bl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and dil, dl
and rcx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rcx]
bt dx, ax
bt eax, 54
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdx
cmovb rdx, rbx
add cl, -106 # instrumentation
cmovno rdi, rdx
sub ecx, -107
bswap rcx
or ebx, -78
test rax, -813666773
add cl, 31 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
adc dil, dl
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
mov al, al
sbb dl, al
xor rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
