.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
and cl, -71
xor dl, bl
xor dl, al
btr ax, bx
test bl, -14
jmp .bb_0.1
.bb_0.1:
test eax, 424329527
or al, 25
and sil, 74
or bl, dl
test al, bl
jmp .bb_0.2
.bb_0.2:
cmovnz rsi, rdx
test bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
