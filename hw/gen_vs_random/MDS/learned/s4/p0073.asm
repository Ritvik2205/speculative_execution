.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and bl, sil
test dil, -80
jmp .bb_0.1
.bb_0.1:
xor al, 122
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
jmp .bb_0.2
.bb_0.2:
test al, 66
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
or rax, -1561934807
test bl, 65
and cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
