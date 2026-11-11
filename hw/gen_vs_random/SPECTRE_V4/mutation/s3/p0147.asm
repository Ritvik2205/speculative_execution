.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
xor al, 59
or dx, cx
add dx, -90
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
cmovnle eax, edi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
btc ax, dx
cmovnbe rax, rcx
sbb rsi, -115
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
adc ecx, -12
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
xor eax, 181978569
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
add dil, 82
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
inc edi
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
xor eax, -437098167
adc bl, dl
cmovz rcx, rdx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
cmovle cx, bx
adc ebx, 117
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
neg sil
cmovnz di, dx
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and sil, al
and rbx, 69
mul ax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
