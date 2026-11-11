.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, dx
and rbx, 110
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
cmovz rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
xor eax, 181978569
adc ebx, 117
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
neg sil
cmovnle eax, edi
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
xor eax, -164167056
mul ax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
inc edi
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and sil, al
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
xor al, 59
add dil, 82
or dx, cx
sbb rsi, -115
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
cmovnbe rax, rcx
add al, 72 # instrumentation
cmovle ax, dx
adc bl, dl
adc ecx, -12
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
cmovle cx, bx
cmovnz di, dx
add dx, -90
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
