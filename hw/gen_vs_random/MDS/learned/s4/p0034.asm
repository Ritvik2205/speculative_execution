.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
or dil, bl
and cl, cl
bt bx, 253
btr di, ax
test al, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or dl, al
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
bt edi, edx
or dil, 16
test sil, -96
xor al, cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
