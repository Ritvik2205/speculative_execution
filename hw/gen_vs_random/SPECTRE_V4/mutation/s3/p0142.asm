.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
adc bl, dl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
cmovnz di, dx
cmovle cx, bx
xor al, 102
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
sbb rsi, -115
and sil, al
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
add dx, -90
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
mul ax
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
inc edi
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
cmovz rcx, rdx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rbx, 110
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
btc ax, dx
adc ebx, 117
cmovnbe rax, rcx
or dx, cx
add dil, 16
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
xor eax, -164167056
adc ecx, -12
xor eax, -437098167
neg sil
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
cmovnle eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
