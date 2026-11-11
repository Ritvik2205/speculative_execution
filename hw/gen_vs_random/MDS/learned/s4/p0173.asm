.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test eax, 1287331633
xor dx, 7
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
or ax, 30524
or bl, dil
or al, -58
or dx, 125
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or dl, dil
and ax, -4410
xor al, 99
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
