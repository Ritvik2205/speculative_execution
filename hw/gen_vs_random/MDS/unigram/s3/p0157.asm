.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 28
and ecx, 12
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
xor al, cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
xor sil, 84
jmp .bb_0.1
.bb_0.1:
or bl, al
bt edx, edx
or cl, 10
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and dl, al
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and bl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rsi]
bts esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
