.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -38 # instrumentation
cmovp rax, rsi
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
xor cl, dil
xchg rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
bts rbx, 98
or bl, al
sub di, 31
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
jmp .bb_0.1
.bb_0.1:
add sil, 67
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
cmovle edx, esi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
xor cl, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
cmovns edi, edx
and bx, -21
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
cmovnbe rax, rdi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and dil, sil
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 1
cmovnbe ebx, edi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
test al, 74
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 75
adc dl, al
xor dil, dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
sub dl, dl
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
