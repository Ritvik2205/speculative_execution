.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, bx
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 19
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
add dl, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
adc eax, -79
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], edi
sub dl, cl
xor sil, 56
test ax, -5170
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rax], esi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 21
sub al, 119
cmovnbe rax, rsi
add bl, bl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
test dil, 66
mul dl
movzx cx, sil
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
cmovnz dx, bx
sub cl, -74
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ebx
test bl, 0
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
add dl, 41
cmovs rbx, rsi
movzx rax, dx
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
sub rbx, 64
cmovp rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 88
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 33
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
add si, 4
adc edi, 23
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
add cl, 106 # instrumentation
cmovnp rdx, rbx
and dil, 96
sbb dil, 9
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
