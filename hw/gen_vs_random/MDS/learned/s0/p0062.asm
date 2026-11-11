.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
and dl, al
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or cl, dl
or dl, al
xor dl, -43
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or sil, -78
and di, 91
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
xor bl, cl
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
