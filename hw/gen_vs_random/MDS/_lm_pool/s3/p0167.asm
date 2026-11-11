.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or sil, dl
or al, al
or al, 30
or sil, -49
and dil, -62
and al, al
and rdx, 38
jmp .bb_0.1
.bb_0.1:
test bl, 65
or al, -22
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
btr di, si
or cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
