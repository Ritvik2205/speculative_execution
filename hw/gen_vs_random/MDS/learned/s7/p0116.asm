.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -14
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
or dl, bl
jmp .bb_0.1
.bb_0.1:
or bl, bl
xor di, 40
xor cl, bl
jmp .bb_0.2
.bb_0.2:
xor sil, -126
jmp .bb_0.3
.bb_0.3:
and eax, 33
or al, al
or dil, sil
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
xor al, -19
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
