.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and cl, -6
xor sil, -15
and rbx, 65
or dl, dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or al, 54
and al, cl
xor dil, 8
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
test bl, -9
bts rbx, 115
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
or dil, 16
xor dil, -124
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
