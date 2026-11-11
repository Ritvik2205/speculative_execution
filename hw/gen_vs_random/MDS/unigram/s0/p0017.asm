.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 122 # instrumentation
cmovnbe edx, edi
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and bl, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and bl, -13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
and bl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and sil, bl
and cl, sil
bts eax, ebx
or bl, bl
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
cmovo rcx, rbx
btr rcx, 14
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
