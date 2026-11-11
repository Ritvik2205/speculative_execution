.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
add ecx, esi
bt edi, 233
movsx ecx, bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
add dl, bl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
cmovb rsi, rsi
sub cl, cl
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
bts bx, 102
xor dl, al
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
adc bl, bl
mul cl
xor al, 48
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
mov edx, esi
dec rdx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
add si, ax
or al, -90
mul ax
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
mul sil
dec edx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
mov rbx, rdx
dec al
xchg bl, al
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
sbb eax, -141178938
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
and ebx, esi
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
add cl, -65 # instrumentation
adc al, cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
add dl, -55 # instrumentation
cmovnbe esi, edi
adc rcx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
