.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 93
or al, cl
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
bt cx, si
cmovns ecx, edi
and rax, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rax]
and sil, 65
and bl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
and rax, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rax]
bts rdi, rcx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
cmovbe rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
or al, -8
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
