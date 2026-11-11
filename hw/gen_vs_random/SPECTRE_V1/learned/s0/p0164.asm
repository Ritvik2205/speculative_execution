.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
xor rbx, -34
setz sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
test al, 40
lea rax, qword ptr [rdx + rsi + 97]
sbb eax, 2098460225
sbb bl, dl
jmp .bb_0.1
.bb_0.1:
cmovl rax, rax
xor al, al
and al, sil
test esi, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
