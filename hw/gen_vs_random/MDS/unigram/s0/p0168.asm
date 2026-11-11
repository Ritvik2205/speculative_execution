.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
cmovnb eax, edi
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
btc edi, ebx
or sil, al
and rax, -731384280
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or cl, al
and sil, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and esi, eax
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
cmovns eax, esi
or rcx, rdx
or di, 0b1000000000000000 # instrumentation
bsf di, di
test edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
