.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
add dil, 16
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
xor eax, -437098167
cmovnbe rax, rcx
and rbx, 110
xor eax, 181978569
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
add dx, -90
xor al, 102
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and sil, al
adc bl, dl
adc ecx, -12
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
cmovz rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
cmovle cx, bx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
neg sil
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
mul ax
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
sbb rsi, -115
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
cmovnle eax, edi
cmovnz di, dx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
btc ax, dx
inc edi
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
adc ebx, 117
or dx, cx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
