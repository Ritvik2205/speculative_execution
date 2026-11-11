.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -27
xor dil, -70
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and dl, bl
not cl
and sil, sil
and al, 106
jmp .bb_0.1
.bb_0.1:
test dil, -51
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
or al, dil
test ecx, -1843375753
xor cl, 24
btr cx, dx
xor dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
