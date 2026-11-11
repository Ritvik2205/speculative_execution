.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
sbb dil, al
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
adc bl, al
sbb ecx, 21
setno al
and al, 33
jmp .bb_0.3
.bb_0.3:
add bl, bl
cmp al, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
