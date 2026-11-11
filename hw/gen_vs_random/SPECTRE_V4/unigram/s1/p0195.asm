.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rdx, 19
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 86
mov rax, -8696242625349627833
mul rbx
add rsi, rcx
and rdx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
cmp ax, -15031
xchg dil, dil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rcx
and al, bl
adc sil, 10
add dl, 41
mul edx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
sbb al, 32
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovnp rbx, rbx
not rsi
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
cmp bx, ax
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 11
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
sbb bl, bl
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
sub edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
adc bl, 89
sbb cl, -104
mov rbx, rcx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 61
test dil, 92
or cl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
