.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, cx
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
cmovz rcx, rdx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
btc ax, dx
cmovnbe rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
xor al, 102
mul ax
and sil, al
add dx, -90
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
cmovle cx, bx
sbb rsi, -115
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
neg sil
inc edi
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rbx, 69
xor eax, 181978569
xor eax, 181978569
adc ecx, -12
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
cmovnle eax, edi
add dil, 16
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
adc bl, dl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
adc ebx, 117
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
add al, 72 # instrumentation
cmovle ax, dx
cmovnz di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
