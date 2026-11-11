.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdx, -59
cmovnp edi, ecx
and sil, sil
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
and dl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
xor cl, dl
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and bl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor rbx, rdx
bts ax, 22
or ecx, edx
not rcx
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and ax, ax
and al, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and bl, 27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 17
btr edi, 221
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
