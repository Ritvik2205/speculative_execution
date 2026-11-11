.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
inc edi
cmovnle eax, edi
and rbx, 69
cmovz rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
xor eax, 181978569
add dil, 82
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
cmovnz di, dx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
neg sil
add al, 72 # instrumentation
cmovle ax, dx
and sil, al
add dx, -90
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
xor eax, 181978569
adc ecx, -12
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
sbb rsi, -115
mul ax
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
cmovle cx, bx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
adc bl, dl
cmovnbe rax, rcx
or dx, cx
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
btc ax, dx
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
xor al, 69
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
adc ebx, 117
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
