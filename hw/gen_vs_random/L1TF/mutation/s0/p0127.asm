.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
add al, -49 # instrumentation
setnb dil
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
or rax, 1447934463
btc bx, 168
cmp ax, -79
add cx, 59
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
cmovnle edx, ebx
jmp .bb_0.1
.bb_0.1:
mov al, 79
setno al
add cl, 102 # instrumentation
sbb si, ax
xor ax, -27503
cmovnl ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
