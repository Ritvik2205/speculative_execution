.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
lea esi, qword ptr [rax]
and eax, -409673666
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
lea si, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
or rsi, 26
add dl, dl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
