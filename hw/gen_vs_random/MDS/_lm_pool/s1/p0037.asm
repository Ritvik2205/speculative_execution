.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
test bl, cl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and dl, dl
bt ax, cx
or dil, -71
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
test esi, 425331143
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
xor bl, -27
btr ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
