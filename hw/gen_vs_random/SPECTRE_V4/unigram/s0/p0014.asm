.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
sub al, bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 7
or cl, al
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
adc sil, 28
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 31
xor bl, 93
sub bl, bl
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
sub dl, sil
movzx cx, bl
xor esi, 3
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
test dx, 32
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 68
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
add dil, bl
and bl, cl
cmovz edx, edi
and dil, 96
add dx, -90
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], eax
test rdx, 36
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 76
imul cl
add bl, -75 # instrumentation
adc bl, 66
sub cl, 116
add cl, sil
or al, 96
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 38
bt eax, esi
mov rsi, 37
sub sil, sil
sub dil, sil
sbb rdx, 36
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
cmovnle di, cx
sub bl, bl
sbb ax, -19255
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
