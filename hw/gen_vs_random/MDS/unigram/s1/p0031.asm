.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000000000000000 # instrumentation
bsr di, di
not rcx
and rcx, rsi
not dl
btr ebx, 0
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
and dl, 48 # instrumentation
cmovz rdi, rbx
btr rcx, rbx
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmovnp di, di
cmovnle edx, eax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdx]
or cl, sil
or rbx, -72
cmovz ax, ax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
