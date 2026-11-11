.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, dl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 52
not rbx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 99
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 55
test rax, -1395313845
and rcx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdx], dx
add rax, rcx
and rsi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], esi
cmovbe di, si
cmovle rcx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
cmovle ebx, edx
adc cx, 10
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 36
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
bts di, 30
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
sub bx, 24
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 71
cmovnle ebx, eax
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
bt rdx, rdx
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
neg rbx
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 88
imul sil
cmp bl, sil
and cl, 126
mov al, cl
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
cmp cx, 0
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
movzx esi, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
