.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
test dil, -26
and edx, ebx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rsi]
cmp dil, sil
cmovnz rdi, rdi
add dl, 122 # instrumentation
cmovz dx, bx
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rax], ax
mov dl, al
add bl, -94 # instrumentation
cmovnle rdx, rbx
sub dil, dil
adc cl, cl
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
add rsi, 68
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -112
dec cl
test sil, dl
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
dec al
add al, 17 # instrumentation
cmovnle ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
bts ebx, eax
or bl, bl
not edx
movzx ebx, dil
cmp al, dl
and bl, al
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovle rsi, rcx
adc bl, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
cmp cl, al
add ax, 6694
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
xchg cl, dl
bts eax, 58
or si, 85
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
bts dx, 96
test al, dl
xchg bx, bx
cmp edx, 4
xor rcx, 112
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
sub ecx, edi
add cl, 42 # instrumentation
movsx rax, cl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
