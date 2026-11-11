.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
or rax, 699028911
cmovno bx, dx
and rax, -109
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
test al, -82
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
