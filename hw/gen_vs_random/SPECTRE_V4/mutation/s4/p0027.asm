.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle cx, bx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
neg sil
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
inc edi
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
btc ax, dx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
cmovz rcx, rdx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
adc ebx, 117
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
cmovnbe rax, rcx
add dx, -90
and rbx, 110
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and sil, al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
cmovnz di, dx
adc ecx, -12
add al, 72 # instrumentation
cmovle ax, dx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
sbb rsi, -115
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
add dil, 16
or dx, cx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
mul ax
xor al, -2
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
adc bl, dl
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
cmovnle eax, edi
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
xor eax, -164167056
xor eax, 181978569
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
