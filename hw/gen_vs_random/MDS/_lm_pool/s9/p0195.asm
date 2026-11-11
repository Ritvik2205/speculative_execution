.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and al, 84
test al, dl
test bl, -114
or sil, -78
or al, 30
xor sil, -46
xor esi, 34
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
xor rdi, -9
xor rdi, -9
or bl, 13
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
