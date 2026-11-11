.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
xchg dl, al
adc cl, dl
test cl, -10
sub cl, 18
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
xor si, bx
sub al, 55
or al, -19
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
cmp sil, al
cmovbe cx, si
adc dl, 14
add cl, al
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
