.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
xor cl, 55
or bl, cl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and esi, 60
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rbx]
bts di, 37
or sil, sil
xor dil, 81
and sil, al
and esi, 37
xor cx, -18
or al, -58
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
