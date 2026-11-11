.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 71 # instrumentation
adc cx, dx
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
cmp sil, 127
inc ecx
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
cmovle ax, ax
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
test rax, -813666773
sub dx, si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
xchg rdi, rax
xchg al, al
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
cmovnp ax, si
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
add sil, sil
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
sbb cx, cx
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
btr rdx, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
dec sil
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
cmovno bx, dx
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
xor ebx, 40
mov al, bl
or bl, 61
cmovbe rdx, rcx
mov al, 125
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
test rax, -269735774
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
add ax, 10655
movsx edi, al
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
add cl, -94 # instrumentation
cmovnle rsi, rcx
adc dil, -17
neg edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
