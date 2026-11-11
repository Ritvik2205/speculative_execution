.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
test dl, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
btr di, 89
test ecx, -1843375753
jmp .bb_0.1
.bb_0.1:
bts rcx, 88
or bl, -62
or bl, sil
xor bl, -27
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and dx, 60
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
