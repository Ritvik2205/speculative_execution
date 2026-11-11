.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
test bl, -9
and cl, dl
test bl, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor dil, -70
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test bl, -9
test bl, dl
and edx, -44
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
or dl, -31
and cx, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
