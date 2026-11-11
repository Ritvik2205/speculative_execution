.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ax, -79
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
or rax, 1447934463
add cx, 59
cmovnle edx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
add al, -49 # instrumentation
setnb dil
btc bx, 168
jmp .bb_0.1
.bb_0.1:
cmovnl ebx, eax
xor ax, -27503
add cl, 102 # instrumentation
sbb si, ax
setno al
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
mov al, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
