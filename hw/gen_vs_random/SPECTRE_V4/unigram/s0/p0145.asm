.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
cmovnb rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], 79
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 33
xor esi, eax
add dl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and cl, 58
or ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
cmovnb rsi, rdx
imul cl
bt eax, edx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
imul si, bx, -16
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
add dx, -90
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
bts edi, 167
and sil, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
movzx rcx, bl
add dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
sbb dl, -99
xor bl, 93
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sbb dl, sil
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
sbb dl, sil
cmovnl rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
imul di, cx, 95
and rsi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rsi]
xchg edx, ecx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
adc cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
