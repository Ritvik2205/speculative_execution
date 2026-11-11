.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec edx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
adc rcx, 57
mov edx, esi
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
sub cl, cl
movsx ecx, bl
bts bx, 42
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
add ecx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
add si, ax
mul sil
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
mul ax
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
and ebx, esi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
xor dl, al
xor al, 30
adc bl, bl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
or al, -16
dec rdx
bt edi, 233
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
add cl, -65 # instrumentation
adc al, cl
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
sbb eax, -920840872
mov rbx, rdx
xchg bl, al
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
add dl, bl
cmovb rsi, rsi
add dl, -55 # instrumentation
cmovnbe esi, edi
mul cl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
