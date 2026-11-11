.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 53
xchg al, al
xor rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
xchg cx, si
and esi, edi
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and cl, al
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
sbb cx, 29
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
test bx, cx
btc rsi, rbx
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], esi
cmovnl rcx, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
cmovnle esi, ecx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
test dl, bl
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
movzx edi, cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
xor rax, rcx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
add ax, ax
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
mov dx, si
and edx, eax
adc ebx, -55
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edi
cmovns rax, rdi
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
test ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 73
cmovl rsi, rax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
test eax, -31785616
cmovp eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
