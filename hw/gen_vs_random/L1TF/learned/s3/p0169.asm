.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
sub cl, -49
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
xor al, 16
cmovnz rdx, rax
jmp .bb_0.1
.bb_0.1:
or al, dl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
add bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
