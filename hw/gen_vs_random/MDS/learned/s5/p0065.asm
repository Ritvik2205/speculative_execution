.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edx
and dil, bl
or al, -17
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
xor bl, dl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
and di, 99
xor di, -83
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and cl, -6
and bx, 36
and ax, 5001
test ax, -11534
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
