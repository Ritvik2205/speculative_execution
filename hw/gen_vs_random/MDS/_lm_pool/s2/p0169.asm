.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, cx
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or bl, dil
xor al, bl
and al, -103
xor dil, 124
or al, dl
xor bl, -88
or dl, dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
or dl, al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
xor dl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
