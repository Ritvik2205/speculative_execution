.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
or dl, -97
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or rbx, -72
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
xor bl, -27
bt bx, cx
test dl, 27
xor cl, al
xor rcx, -2
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
test al, dil
or al, bl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
