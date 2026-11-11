.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
xor di, -83
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
test cl, al
xor cl, 83
or bl, 13
and al, 14
and bl, bl
test bl, -9
not dl
btr esi, ebx
xor sil, bl
xor dil, -70
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
