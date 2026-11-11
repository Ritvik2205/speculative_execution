.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
or al, dl
and rcx, 107
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
xor cl, bl
xor cl, 83
test al, -7
xor dl, -59
test bl, al
and al, cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 8
xor cx, -18
and dil, cl
and dl, sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
