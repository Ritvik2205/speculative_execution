.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
test al, -56
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and bl, 89
xor al, cl
sbb cl, sil
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdx + rsi + 4]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
