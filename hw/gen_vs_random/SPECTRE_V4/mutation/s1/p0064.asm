.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
xor eax, 181978569
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
btc ax, dx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
add al, 72 # instrumentation
cmovle ax, dx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
add dil, 82
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
adc ecx, -12
and rbx, 69
xor eax, -164167056
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
adc bl, dl
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
xor al, -2
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
add dx, -90
inc edi
adc ebx, 117
or dx, cx
neg sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
cmovnz di, dx
cmovnbe rax, rcx
cmovnle eax, edi
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
cmovz rcx, rdx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
cmovle cx, bx
and sil, al
mul ax
sbb rsi, -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
