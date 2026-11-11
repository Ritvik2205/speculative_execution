.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
and bl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
or edx, -1
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and bl, -74 # instrumentation
cmovns eax, edx
and rax, rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovle rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
cmovnp rbx, rdi
test esi, edi
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
