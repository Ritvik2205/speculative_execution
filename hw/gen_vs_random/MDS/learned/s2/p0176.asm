.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
add eax, esi
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
or rax, -2043376621
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
xor dl, sil
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
cmovnbe si, di
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rsi
and cl, -109 # instrumentation
cmovns rdi, rdi
bt rsi, rdi
cmovp ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
bts rax, 117
test ebx, 245771113
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
xor al, cl
cmovs edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
