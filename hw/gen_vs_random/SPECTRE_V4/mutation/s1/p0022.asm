.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, bl
cmovb rsi, rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
mov edx, esi
sbb eax, 1482884079
and ebx, esi
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
add ecx, esi
xor dl, al
movsx ecx, bl
mul ax
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
adc bl, bl
or al, -88
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
dec rdx
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
mul sil
bt edi, 135
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
dec al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
add si, ax
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
add dl, -55 # instrumentation
cmovnbe esi, edi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
mov rbx, rdx
mul cl
xchg bl, al
dec edx
adc rcx, 57
add cl, -65 # instrumentation
adc al, cl
xor bl, cl
xor al, -82
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
sub cl, cl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
bts bx, 102
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
