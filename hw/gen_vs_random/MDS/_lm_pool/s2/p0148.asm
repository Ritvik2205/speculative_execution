.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, cx
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
test dil, dl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
and eax, 461212071
or al, -17
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
or al, 30
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and ax, -4410
xor di, -83
xor bl, cl
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
