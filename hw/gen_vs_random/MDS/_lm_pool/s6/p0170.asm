.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -78
test ax, si
or dl, -21
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and sil, -9
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
test cl, 62
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
or al, -75
test bl, cl
btr di, dx
test al, sil
and al, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
xor al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
