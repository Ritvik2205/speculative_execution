.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and sil, -49
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
sub cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
btc rdx, rcx
not cl
and dil, 96
and rdi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdi]
xor al, -2
adc ax, 67
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
xor si, 62
cmp cl, cl
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
add dl, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
or sil, 89
and sil, -49
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
bts rcx, rcx
cmovnp dx, dx
mul edx
sbb cl, sil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 95
adc dl, dil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
sbb eax, 4
cmovnle rcx, rcx
sbb bl, -94
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
inc edx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
add rdx, rax
bt eax, edx
cmp rdi, 30
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
adc dil, bl
xor cl, al
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
