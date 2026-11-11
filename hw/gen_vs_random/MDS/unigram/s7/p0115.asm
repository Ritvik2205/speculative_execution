.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -43
and dl, 97 # instrumentation
cmovnp si, ax
and dl, -72 # instrumentation
not cl
and sil, 8 # instrumentation
cmovz rax, rsi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and bl, al
cmovbe rsi, rax
btr ax, dx
and bl, -11 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and dil, sil
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 84
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
cmovp edi, ecx
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
or ecx, 19
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 38
cmovp ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
