.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
adc ebx, 117
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
neg sil
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
inc edi
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
cmovz rcx, rdx
and sil, al
cmovle cx, bx
add dx, -90
cmovnbe rax, rcx
xor al, 56
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
adc ecx, -12
or dx, cx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
adc bl, dl
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
xor eax, 181978569
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
mul ax
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
cmovnz di, dx
sbb rsi, -115
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
add al, 72 # instrumentation
cmovle ax, dx
xor eax, -437098167
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
add dil, 16
cmovnle eax, edi
and rbx, 110
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
btc ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
