.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
add cl, -65 # instrumentation
adc al, cl
sbb eax, 1482884079
mul ax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
mov rbx, rdx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
dec rdx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
cmovb rsi, rsi
xor al, -60
add dl, -55 # instrumentation
cmovnbe esi, edi
movsx ecx, bl
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
add si, ax
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
adc bl, bl
mov edx, esi
sub cl, cl
xchg bl, al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
add dl, bl
and ebx, esi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
adc rcx, 57
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
bt edi, 233
dec edx
mul cl
xor dl, al
mul sil
dec al
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
bts bx, 102
add ecx, esi
or al, 27
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
xor bl, cl
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
