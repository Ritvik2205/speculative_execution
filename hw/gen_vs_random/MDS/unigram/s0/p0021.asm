.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rcx, 44
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
or rdi, 67
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
and al, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 92
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or rcx, 4
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 94
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and dl, 107 # instrumentation
cmovs eax, ecx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and bl, al
cmovle edx, ebx
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
