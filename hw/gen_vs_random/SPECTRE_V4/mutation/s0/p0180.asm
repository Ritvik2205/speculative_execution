.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rbx, 110
cmovz rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
xor al, 56
neg sil
cmovnbe rax, rcx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
add al, 72 # instrumentation
cmovle ax, dx
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
adc ecx, -12
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
cmovnz di, dx
xor eax, -437098167
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
btc ax, dx
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
sbb rsi, -115
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and sil, al
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
or dx, cx
adc bl, dl
add dx, -90
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
mul ax
add dil, 16
cmovle cx, bx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
adc ebx, 117
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
xor eax, -164167056
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
cmovnle eax, edi
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
inc edi
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
