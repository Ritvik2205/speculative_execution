.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rsi, rax
cmovbe cx, bx
cmovnp cx, bx
sub cl, al
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 42
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
mov al, dil
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
neg dil
add dl, 71 # instrumentation
cmovnle rax, rdx
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 74
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
adc ax, 25365
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and edi, -102
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
add cl, -74 # instrumentation
cmovnp rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 93
btr cx, 252
btr edx, 160
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
add bl, cl
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 81
cmovno esi, ecx
sub dx, di
mul rcx
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
test rax, rsi
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
cmovs rax, rdx
add dil, 105
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
mul edx
or sil, cl
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rbx
adc edx, -125
cmp rbx, -91
btr rbx, 83
cmovbe dx, ax
sbb eax, 316213929
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
add dl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
mov eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
