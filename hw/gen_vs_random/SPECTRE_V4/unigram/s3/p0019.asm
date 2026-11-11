.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rbx]
xor dil, 117
sub dx, -12
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
test dl, -102
cmp ax, -22704
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
adc cl, bl
add al, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 89
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
xor rdi, rsi
dec si
mul ax
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 69
add sil, al
imul bl
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
add sil, 40 # instrumentation
cmovnp rdx, rsi
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
btr ax, di
sub eax, -672265139
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx], 100
cmovl rdx, rsi
xor cx, -80
cmovl ebx, esi
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 19
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
add al, 87 # instrumentation
cmovz ebx, eax
cmp al, sil
add cl, 111 # instrumentation
cmovnle bx, dx
movsx esi, di
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
btr cx, cx
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rax
movsx ax, cl
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
