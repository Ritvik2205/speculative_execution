.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor sil, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
test al, al
and dil, dl
xor bl, -102
and cl, dil
test eax, 343548072
and al, 35
test al, dl
test sil, 41
and al, al
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and di, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
