.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
or rax, -1523798580
or di, 28
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
xor di, 93
and al, al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
test al, 91
or al, 54
xor rdx, -59
test rdx, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
