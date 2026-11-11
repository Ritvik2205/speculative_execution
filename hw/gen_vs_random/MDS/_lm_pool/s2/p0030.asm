.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -1005
xor bl, -61
and cl, dil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and rdi, 20
and sil, al
and rax, 498847670
test al, 22
not eax
xor esi, 21
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or dil, -78
xor di, -83
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
