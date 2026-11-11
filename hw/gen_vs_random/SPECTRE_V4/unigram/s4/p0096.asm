.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, cl
add dil, 75
dec dx
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
adc ecx, 55
cmovnbe ebx, eax
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
xor dl, -66
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], -74
and rax, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
adc edx, -125
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx], 70
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdi
and eax, -2040347881
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
sub al, dl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 28
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
mov bl, bl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
or ax, -26182
or ebx, -82
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 59
add sil, -18
sbb cx, 106
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
add al, -79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
neg dl
add bl, al
and ebx, -4
cmovno ebx, eax
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
xor rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
