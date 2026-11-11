.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
test rbx, 61
cmovnp di, dx
add dl, 41
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
xor eax, -437098167
sub al, bl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 26
add cx, 82
mov sil, al
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 42
cmovp ax, dx
xor al, 102
sbb si, 95
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 87
add al, al
imul edx, ecx, 28
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
cmovnle dx, cx
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
bt ebx, ecx
sbb cl, -104
sbb dl, dl
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
cmovnbe edx, esi
and cl, bl
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rbx
cmp cx, 36
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 74
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
add cl, bl
adc dl, 23
or ax, -12775
and dl, 43
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
cmp dl, dl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 18
movzx eax, dl
add dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
sbb al, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
