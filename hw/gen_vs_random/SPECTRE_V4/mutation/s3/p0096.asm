.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
or dx, cx
cmovnle eax, edi
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
add dil, 82
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
inc edi
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
cmovle cx, bx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
adc ebx, 117
cmovnz di, dx
xor eax, -437098167
cmovz rcx, rdx
sbb rsi, -115
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
cmovnbe rax, rcx
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
add dx, -90
add al, 72 # instrumentation
cmovle ax, dx
neg sil
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
xor eax, -164167056
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and sil, al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
mul ax
adc bl, dl
and rbx, 69
xor al, 29
adc ecx, -12
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
btc ax, dx
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
