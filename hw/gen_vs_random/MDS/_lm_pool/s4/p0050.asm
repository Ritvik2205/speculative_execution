.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
or al, -24
test al, 22
xor ax, -12492
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
xor bl, -102
or si, -12
and edx, -44
xor rax, -1499464454
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and cl, -6
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
xor cl, 24
or dl, -31
xor sil, 94
lea rax, qword ptr [rsi]
and sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
