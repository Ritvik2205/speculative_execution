.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
or al, al
sbb bl, -88
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 17
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdx
seto sil
not eax
sub rax, 1715032616
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 35
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
add dl, 109 # instrumentation
cmovnb rbx, rax
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
