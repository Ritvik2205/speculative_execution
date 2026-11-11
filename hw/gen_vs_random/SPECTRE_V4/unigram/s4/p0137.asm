.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, al
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmp si, 43
cmovl rax, rdx
sub bl, dil
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
adc cl, al
cmovnbe rbx, rdx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 61
xor bx, ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
cmovle edx, eax
cmovb ebx, edx
xor bl, 93
add sil, sil
cmp dl, dil
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
test sil, dl
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
cmp ax, dx
add ax, 28666
dec ecx
test rdx, 93
adc sil, 40
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
and dl, bl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
xor bl, 93
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
xor cl, -54
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
add dx, -90
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
adc bx, -89
xor bl, 93
xor edx, esi
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
