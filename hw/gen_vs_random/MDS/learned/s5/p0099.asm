.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
xor sil, 110
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
test sil, -96
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
xor bl, -27
xor sil, cl
xor cl, 15
and bl, cl
test dil, dil
and rsi, 75
xor cl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
