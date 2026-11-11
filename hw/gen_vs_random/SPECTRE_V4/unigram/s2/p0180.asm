.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, -116
or di, 29
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
test di, cx
or cx, -74
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
cmovnz dx, ax
bts esi, 18
cmp al, bl
xor dl, dl
cmovo eax, eax
btr ebx, 116
movzx ecx, cl
or rcx, rbx
cmovo rdx, rcx
test cx, cx
and dl, -11
add edx, eax
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
cmovbe ecx, edx
test bl, dl
adc rbx, 60
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
btc eax, ecx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
add bl, 69 # instrumentation
cmovnbe cx, bx
cmovz rax, rcx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
sbb bx, 87
movsx di, al
imul rcx, rdi
sbb cl, 127
xchg rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 60
or bl, 61
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
or cl, sil
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
sbb dx, 2
cmp sil, 113
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
