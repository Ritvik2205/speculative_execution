.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
inc edi
and sil, al
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
add al, 72 # instrumentation
cmovle ax, dx
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
cmovnle eax, edi
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
neg sil
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
adc ebx, 117
adc bl, dl
or dx, cx
adc ecx, -12
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
xor eax, -437098167
add dil, 82
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
xor eax, 181978569
mul ax
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
cmovz rcx, rdx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rbx, 69
cmovnbe rax, rcx
cmovle cx, bx
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
xor al, 59
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
btc ax, dx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
sbb rsi, -115
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
add dx, -90
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
cmovnz di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
