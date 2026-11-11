.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
or bl, bl
and ecx, -104
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
xor sil, -46
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and cl, 6 # instrumentation
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], esi
test dil, dil
or dil, dil
and al, 70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
or dil, dil
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 93
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and dl, 21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
