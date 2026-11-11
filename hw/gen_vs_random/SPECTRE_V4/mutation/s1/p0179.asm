.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
xor al, 56
adc bl, dl
xor eax, -164167056
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
cmovnz di, dx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
mul ax
cmovle cx, bx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
adc ecx, -12
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
cmovz rcx, rdx
neg sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rbx, 69
or dx, cx
cmovnle eax, edi
xor eax, -437098167
add dx, -90
btc ax, dx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
inc edi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
add al, 72 # instrumentation
cmovle ax, dx
add dil, 16
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
sbb rsi, -115
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and sil, al
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
adc ebx, 117
cmovnbe rax, rcx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
