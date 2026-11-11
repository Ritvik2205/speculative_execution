.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6
bts rax, 149
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and dl, cl
or eax, -1827868798
cmovo dx, si
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], -75
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and si, ax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
cmovp si, si
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
or al, al
xor rdi, -50
jmp .bb_0.2
.bb_0.2:
and bl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
xor cl, -79
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
cmovle si, si
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
cmovz ecx, eax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and al, -56 # instrumentation
cmovl rdx, rcx
cmovno ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
