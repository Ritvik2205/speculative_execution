.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, dx
and al, -68
adc dil, 120
btc ax, dx
or sil, -44
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 55
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
cmp bl, dl
add sil, -61
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
sbb sil, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
