.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
or rax, 1447934463
cmp ax, -79
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
btc bx, 168
add cx, 59
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmovnle edx, ebx
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb si, ax
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
btc dx, 19
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
