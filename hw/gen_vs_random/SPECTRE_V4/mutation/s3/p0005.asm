.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, cx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
adc ebx, 117
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
xor al, 102
add dx, -90
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
adc bl, dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
add al, 72 # instrumentation
cmovle ax, dx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
mul ax
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and sil, al
cmovle cx, bx
cmovz rcx, rdx
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
sbb rsi, -115
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
cmovnz di, dx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rbx, 110
cmovnbe rax, rcx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
xor eax, 181978569
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
inc edi
xor eax, 181978569
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
add dil, 16
cmovnle eax, edi
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
neg sil
btc ax, dx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
adc ecx, -12
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
