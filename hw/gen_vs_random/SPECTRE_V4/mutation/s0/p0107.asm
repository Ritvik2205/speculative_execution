.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
or dx, cx
cmovz rcx, rdx
mul ax
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
cmovnle eax, edi
inc edi
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
sbb rsi, -115
cmovle cx, bx
neg sil
adc ebx, 117
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and sil, al
cmovnbe rax, rcx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
xor eax, -164167056
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
add dil, 16
cmovnz di, dx
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
adc ecx, -12
add al, 72 # instrumentation
cmovle ax, dx
add dx, -90
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
btc ax, dx
xor eax, 181978569
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
adc bl, dl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
xor al, -2
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rbx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
