.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rcx, rsi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
btr cx, 136
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 31
and cx, -2
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
cmovnz ax, dx
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and bl, al
or al, al
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
cmovno ebx, edi
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and dl, 91 # instrumentation
cmovnle ecx, ecx
cmovbe ax, si
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
