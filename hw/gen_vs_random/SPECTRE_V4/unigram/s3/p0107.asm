.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
mul edx
mov cl, 41
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
add al, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
neg sil
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
sbb cl, cl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
xchg dil, sil
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
cmp rax, 2115020203
sub sil, -50
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
xchg rcx, rdi
movzx rbx, ax
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
imul rdi
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
cmovle esi, edi
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx]
cmovnle cx, cx
sub bx, si
cmovb si, si
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
not rax
bt bx, 44
xor al, 29
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
xchg ebx, eax
add rax, rcx
sub rbx, 20
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
