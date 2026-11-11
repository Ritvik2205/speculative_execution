.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
adc rax, 1431457700
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
lea cx, qword ptr [rsi]
xchg ecx, edx
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and al, dl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
or dl, al
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
