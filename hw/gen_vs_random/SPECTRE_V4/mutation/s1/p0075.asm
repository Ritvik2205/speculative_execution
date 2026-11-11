.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
mul ax
sbb rsi, -115
adc ebx, 117
xor al, 29
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
btc ax, dx
cmovnz di, dx
xor eax, 181978569
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
adc ecx, -12
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
or dx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
inc edi
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
bt cx, 111
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
btc ax, si
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
mov rsi, rbx
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], -95
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmovnl rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
movsx rsi, bx
or dl, bl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
cmp cl, cl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
movzx edx, al
add eax, -1796699558
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
