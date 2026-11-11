.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
cmp ax, 2764
or rax, -263404965
btc bx, 168
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
add cx, 59
cmovnle edx, ebx
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
add al, -49 # instrumentation
setnb dil
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb si, ax
setno al
mov al, 79
xor ax, -27503
cmovnl ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
