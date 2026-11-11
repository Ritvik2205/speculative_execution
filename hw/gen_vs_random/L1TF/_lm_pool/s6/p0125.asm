.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, di
lea si, qword ptr [rbx + rdx + 54]
xchg dl, dl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
xor al, dil
cmp dl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 15
sub al, 9
sub cx, 85
xchg edi, edx
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
