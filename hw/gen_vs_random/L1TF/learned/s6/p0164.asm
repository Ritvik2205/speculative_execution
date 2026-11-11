.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 70
and si, 43
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 15
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and cl, dl
movsx edx, dl
sub bl, dl
sbb dil, bl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
