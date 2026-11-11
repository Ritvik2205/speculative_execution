.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
xor bl, -27
or cl, 7
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
xor cl, 15
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and al, 39 # instrumentation
cmovbe ax, cx
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
bt ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and dl, -73
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
cmovle ax, cx
and dl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and bl, 68
test sil, -96
and rbx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
