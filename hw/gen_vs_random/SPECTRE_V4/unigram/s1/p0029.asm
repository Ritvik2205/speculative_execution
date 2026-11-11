.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 50
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
cmovz esi, ebx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 61
imul eax, ecx, 94
btc rsi, 225
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
cmp dil, sil
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
adc rbx, 93
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
xor rbx, 48
add bl, -18 # instrumentation
mov rax, rdx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 13
and rax, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rdi, -2
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
sub sil, -50
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xor dl, 7
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
add cl, -42 # instrumentation
adc dil, al
test rax, -344032571
bts edx, edi
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
sbb eax, -984782068
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 85
btc rsi, rax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
btc rdi, 167
neg ax
cmovz rsi, rdx
btc cx, ax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
add sil, 97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 17
movsx rcx, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
