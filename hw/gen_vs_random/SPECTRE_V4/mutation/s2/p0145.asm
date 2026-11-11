.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rbx, 69
cmovnbe rax, rcx
mul ax
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
xor eax, -164167056
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
cmovnz di, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
neg sil
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
add al, 72 # instrumentation
cmovle ax, dx
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
add dil, 82
cmovz rcx, rdx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
btc ax, dx
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
or dx, cx
adc ebx, 117
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
inc edi
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
add dx, -90
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
cmovle cx, bx
cmovnle eax, edi
xor al, 102
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
xor eax, -437098167
adc ecx, -12
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
sbb rsi, -115
and sil, al
adc bl, dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
