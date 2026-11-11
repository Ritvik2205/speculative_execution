.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -19
and dil, cl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
test al, sil
and rcx, -63
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and di, 91
or dl, al
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
xor cl, sil
and ax, 19740
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
or di, 10
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
