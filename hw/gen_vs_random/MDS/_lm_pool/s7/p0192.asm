.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
test esi, 425331143
xor bl, -102
test dil, 46
xor al, sil
and dil, sil
not sil
and rax, 627810357
test edx, -372470678
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
test ax, 30932
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
