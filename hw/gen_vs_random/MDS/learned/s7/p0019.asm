.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
xor sil, -14
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
xor rax, -843636050
and al, -103
xor al, -26
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
and dl, dl
test bl, sil
test esi, 425331143
and sil, sil
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
btr ax, dx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 62
xor sil, -46
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
