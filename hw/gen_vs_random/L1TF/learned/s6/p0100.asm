.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
and si, 15
xor dil, -42
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
lea si, qword ptr [rcx + rdx]
or al, dl
test bl, 84
cmp sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
