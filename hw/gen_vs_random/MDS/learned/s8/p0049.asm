.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and bl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
test eax, 343548072
jmp .bb_0.1
.bb_0.1:
btr ebx, ecx
jmp .bb_0.2
.bb_0.2:
bts rcx, 49
or cl, cl
and bl, 68
and sil, -56
and di, 99
xor dl, bl
test edi, -1252846009
xor bl, dl
and rax, -2039117613
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
