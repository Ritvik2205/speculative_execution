.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
or dil, al
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
xor al, bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
test cl, sil
test esi, 1857129931
test esi, 425331143
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and bl, dl
xor rcx, -2
jmp .bb_0.3
.bb_0.3:
test dl, bl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
