.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
or rdi, rdx
cmovnp rsi, rdx
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
xor al, 34
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
xor bl, 67
jmp .bb_0.1
.bb_0.1:
btr rdi, 129
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and bl, 120 # instrumentation
cmovnle edi, edi
and al, sil
bt dx, ax
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
