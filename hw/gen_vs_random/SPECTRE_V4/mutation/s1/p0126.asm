.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec al
sbb eax, 1002977021
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
xor dl, al
mul sil
and ebx, esi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
movsx ecx, bl
dec rdx
mul cl
add dl, bl
sub cl, cl
xchg bl, al
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
adc rcx, 57
add ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
mov edx, esi
xor al, -40
dec edx
add si, ax
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
add dl, -55 # instrumentation
cmovnbe esi, edi
cmovb rsi, rsi
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
bts bx, 42
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
add cl, -65 # instrumentation
adc al, cl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
mul ax
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
xor bl, cl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
or al, -19
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
adc bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
mov rbx, rdx
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
bt edi, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
