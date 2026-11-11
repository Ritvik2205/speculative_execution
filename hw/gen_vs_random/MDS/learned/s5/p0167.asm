.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and eax, 454700988
xor sil, cl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
test al, 66
or bl, 100
xor cl, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
or cl, 6
xor sil, bl
xor di, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
