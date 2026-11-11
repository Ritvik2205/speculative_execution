.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, esi
adc dl, 99
or eax, 185586366
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 36
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx]
mov sil, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
mov cl, al
sbb dil, cl
bts eax, eax
adc rdi, 16
sub cl, 18
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
btc rdi, rcx
btc rbx, rax
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
or dl, dl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
or edx, -118
mul dx
adc eax, -3570960
inc edx
sbb al, al
movzx rbx, si
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
test sil, dil
add cl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
add cl, -32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 100
cmovnz dx, cx
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rsi]
test cl, 78
adc bl, al
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and cx, -117
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
xor rax, 93
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 6
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
or dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
