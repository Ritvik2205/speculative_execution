.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -65 # instrumentation
adc al, cl
xor dl, al
add dl, -55 # instrumentation
cmovnbe esi, edi
and ebx, esi
add ecx, esi
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
mul sil
xchg bl, al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
add si, ax
sbb eax, 1002977021
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
mul cl
bt edi, 135
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
adc bl, bl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
movsx ecx, bl
bts bx, 42
dec al
mov edx, esi
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
xor bl, cl
or al, -50
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
cmovb rsi, rsi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
sub cl, cl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
add dl, bl
adc rcx, -99
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
xor al, -84
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
mov rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
dec rdx
dec edx
mul ax
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
