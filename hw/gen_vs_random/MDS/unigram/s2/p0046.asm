.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and al, 126
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
xor cl, 122
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
and cl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
xor dl, al
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
xor al, -15
and dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
cmovle eax, edi
bt ecx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 17
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
and dl, -33 # instrumentation
cmovns rsi, rsi
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
xor ax, 24729
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
