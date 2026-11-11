.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
sbb dl, cl
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
mul rax
test al, -5
cmovnbe di, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
mov al, -26
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
add sil, 18
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], -85
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
add eax, 760523556
jmp .bb_0.1
.bb_0.1:
mov rax, -6437636498926413678
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
xor bl, dl
sbb bl, -94
btc di, 237
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 97
bts eax, edi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
