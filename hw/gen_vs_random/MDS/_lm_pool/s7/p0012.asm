.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, cx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
not al
xor cl, dil
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
or dil, al
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
xor sil, -126
or sil, dl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor rcx, -2
and eax, 33
and di, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
