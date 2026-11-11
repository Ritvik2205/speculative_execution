.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
dec al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
add cl, -65 # instrumentation
adc al, cl
mul sil
xor al, 30
adc bl, bl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
xchg bl, al
cmovb rsi, rsi
and ebx, esi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
add ecx, esi
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
add si, ax
xor dl, al
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
add dl, -55 # instrumentation
cmovnbe esi, edi
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
mul ax
adc rcx, 57
xor bl, cl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
movsx ecx, bl
mov rbx, rdx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
bt edi, 233
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
dec rdx
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
mov edx, esi
sbb eax, 426996540
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
or al, -47
mul cl
add dl, bl
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
sub cl, cl
bts bx, 42
dec edx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
