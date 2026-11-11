.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
or dl, -97
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and sil, 89
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
xor rcx, -2
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
jmp .bb_0.1
.bb_0.1:
xor bl, -88
and cl, dil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 17
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rax], rax
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
