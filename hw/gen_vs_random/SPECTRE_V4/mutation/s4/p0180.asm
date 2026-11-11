.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bl, al
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
add dl, -55 # instrumentation
cmovnbe esi, edi
add ecx, esi
dec al
add cl, -65 # instrumentation
adc al, cl
add dl, bl
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
sbb eax, -747044528
sub cl, cl
and ebx, esi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
mov edx, esi
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
movsx ecx, bl
xor dl, al
bts bx, 102
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
adc bl, bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
cmovb rsi, rsi
dec rdx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
adc rcx, 57
dec edx
xor bl, cl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
mul ax
xor al, 55
mul cl
or al, 1
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
add si, ax
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
mul sil
bt edi, 135
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
mov rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
