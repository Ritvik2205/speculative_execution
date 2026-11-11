.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ecx
sub dl, 41
xor rdx, 122
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
sub bl, 15
and dl, dl
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
or al, -48
cmovle rsi, rdx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
