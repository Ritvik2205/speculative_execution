.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil 
or rax, -263404965 
cmp ax, 2764 
and rcx, 0b1111111111111 # instrumentation
lfence
sbb ebx, dword ptr [r14 + rcx] 
btc bx, 168 
add cx, 59 
and rsi, 0b1111111111111 # instrumentation
lfence
cmovz ax, word ptr [r14 + rsi] 
cmovnle edx, ebx 
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lfence
lock btr dword ptr [r14 + rdi], ecx 
and rdx, 0b1111111111111 # instrumentation
lfence
add eax, dword ptr [r14 + rdx] 
jmp .bb_0.1 
.bb_0.1:
add cl, 102 # instrumentation
sbb si, ax 
cmovnl ebx, eax 
and rax, 0b1111111111111 # instrumentation
lfence
cmovno ax, word ptr [r14 + rax] 
xor ax, -27503 
mov al, -26 
setno al 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
