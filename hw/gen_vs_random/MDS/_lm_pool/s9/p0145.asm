.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
xor al, 9
and al, dil
and dil, -39
jmp .bb_0.1
.bb_0.1:
or sil, al
test esi, 425331143
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
xor edx, 17
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
jmp .bb_0.2
.bb_0.2:
or al, -75
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 23
test dil, -80
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
