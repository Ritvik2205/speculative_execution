.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
xor eax, -437098167
xor eax, -164167056
xor al, 29
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
or dx, cx
inc edi
adc ebx, 117
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
btc ax, dx
cmovnbe rax, rcx
mul ax
neg sil
adc ecx, -12
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
add dx, -90
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
cmovz rcx, rdx
adc bl, dl
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and sil, al
cmovnle eax, edi
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rbx, 110
add dil, 16
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
cmovnz di, dx
cmovle cx, bx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
sbb rsi, -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
