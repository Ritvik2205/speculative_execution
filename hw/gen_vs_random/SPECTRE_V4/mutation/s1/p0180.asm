.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bl, al
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
dec al
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
xor bl, cl
mul cl
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
sub cl, cl
or al, -83
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
bts bx, 102
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
add si, ax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
sbb eax, 1482884079
dec rdx
mul sil
add dl, -55 # instrumentation
cmovnbe esi, edi
add ecx, esi
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
mul ax
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
adc bl, bl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
bt edi, 78
adc rcx, -99
cmovb rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
mov edx, esi
mov rbx, rdx
xor dl, al
xor al, -31
movsx ecx, bl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
dec edx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and ebx, esi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
add dl, bl
add cl, -65 # instrumentation
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
