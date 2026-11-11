.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
add cx, 59
or rax, 1447934463
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmp ax, -79
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
cmovnle edx, ebx
btc bx, 168
jmp .bb_0.1
.bb_0.1:
setno al
add cl, 102 # instrumentation
sbb si, ax
mov al, 79
cmovnl ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
xor ax, -27503
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
