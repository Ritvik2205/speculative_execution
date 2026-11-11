.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rsi
cmovno edi, ebx
sbb bl, -98
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
mov rcx, 72
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
add al, al
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
adc eax, -983562873
btc edi, eax
sbb dl, dil
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
neg rcx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
cmovbe ax, si
xor rbx, rax
xor al, 124
cmovnz ecx, ebx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
add al, -79 # instrumentation
adc rdx, 6
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
or di, 122
test di, -19523
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 92
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdi
or dl, 71
sub bl, -89
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
cmp dil, 101
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
sub rcx, -74
movzx esi, sil
imul dx, ax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -9
movsx edx, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
