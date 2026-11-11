.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edi
mov sil, al
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
test esi, -2111618709
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
sub sil, -35
movzx ax, al
xor rcx, 112
xchg edx, edx
and rcx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rcx]
xchg bl, al
cmovbe edx, ecx
xor al, 48
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
adc al, sil
add dl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
cmp bl, dl
bt eax, 103
and rdi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
movsx rsi, al
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
mov al, dil
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
add rcx, 32
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 2
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
sbb sil, -124
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx]
sbb sil, -124
add dl, bl
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
cmovnle ax, ax
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
xchg rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
cmp bl, dl
mul rbx
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edx
cmovb bx, dx
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
