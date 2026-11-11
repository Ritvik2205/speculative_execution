.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, al
sbb bl, -88
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 7
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdx
seto sil
not eax
sub rax, 57846954
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 58
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
add dl, 109 # instrumentation
cmovnb rbx, rax
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
