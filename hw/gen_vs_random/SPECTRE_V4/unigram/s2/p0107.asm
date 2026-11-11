.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rdx, -90
dec dx
cmovnp ax, cx
test dil, -5
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
imul dl
add dx, 26
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
imul edx
cmovp bx, si
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
imul ax, di, 101
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
cmp ax, 28568
and dil, sil
sub bl, 56
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
sbb al, sil
sub bl, -98
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 27
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
adc rdi, 1
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
add cl, -99 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], bx
add cl, dil
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
inc sil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
cmovno rax, rdi
sbb dl, -71
bt edx, 99
imul edx, edx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
add al, 80 # instrumentation
mov sil, dil
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
imul cx, bx, 91
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
cmp cl, -105
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
