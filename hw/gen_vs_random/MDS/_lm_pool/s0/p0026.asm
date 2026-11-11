.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
or dx, 125
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
test al, 127
jmp .bb_0.1
.bb_0.1:
and dl, -73
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
test ax, -11534
xor sil, -14
xor rax, 459999114
or al, dl
xor ax, -23364
or cl, -77
and eax, 561041355
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
