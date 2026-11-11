.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, -222751961
mul ax
sub bl, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
adc edx, -86
cmovz eax, eax
movsx rax, bl
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
sub cl, al
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
sub dil, dil
add al, -17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
cmovo esi, edx
cmp cl, dl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rsi
btc rax, rdi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
bts edx, edx
xchg edi, ebx
xor dl, bl
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
test dil, cl
movzx eax, si
or cl, -104
xor bl, al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
sbb cx, 106
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
sub al, cl
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
cmovnp eax, eax
btr rdx, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
