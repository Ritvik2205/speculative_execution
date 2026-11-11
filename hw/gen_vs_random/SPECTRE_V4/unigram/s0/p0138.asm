.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -10 # instrumentation
cmovnbe edi, edx
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
test cl, -89
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
xchg ax, cx
btc rbx, 55
add cl, 8 # instrumentation
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
xchg rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
cmp dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
cmovz eax, esi
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
or ecx, 51
test cx, bx
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 78
bts ebx, 22
cmovnb esi, edx
or edx, -127
xchg edx, edi
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
xor dl, 88
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
bts edx, edx
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sub dl, 43
dec rdi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
movzx di, dil
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
cmp rax, -227205962
movzx eax, dil
btr ax, si
xchg eax, esi
or di, bx
sbb bl, -94
neg cl
or ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
