.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -75 # instrumentation
sbb ecx, 59
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
or al, 1
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
movsx ecx, sil
adc rdx, -90
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
mov dx, 22195
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
movzx si, cl
add dil, -97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
movsx ebx, cl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
mul rbx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 67
cmp bl, -16
bt ax, 248
xchg bl, cl
or si, 85
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmp cl, al
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
xor al, 23
and cl, 126
cmovnb eax, ebx
or al, 27
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
btc ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
cmp eax, -813838876
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
or si, 85
adc rdx, rcx
mov rdx, rdi
test ecx, -304234347
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], cx
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
add al, 32 # instrumentation
adc rax, -324435035
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
cmovb dx, di
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
