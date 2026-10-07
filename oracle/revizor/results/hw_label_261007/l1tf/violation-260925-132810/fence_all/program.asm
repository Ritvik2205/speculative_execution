.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
lfence
setnb dil 
lfence
or rax, -263404965 
lfence
cmp ax, 2764 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
sbb ebx, dword ptr [r14 + rcx] 
lfence
btc bx, 168 
lfence
add cx, 59 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovz ax, word ptr [r14 + rsi] 
lfence
cmovnle edx, ebx 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
and ecx, 0b111 # instrumentation
lfence
lock btr dword ptr [r14 + rdi], ecx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
add eax, dword ptr [r14 + rdx] 
lfence
jmp .bb_0.1 
.bb_0.1:
add cl, 102 # instrumentation
lfence
sbb si, ax 
lfence
cmovnl ebx, eax 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovno ax, word ptr [r14 + rax] 
lfence
xor ax, -27503 
lfence
mov al, -26 
lfence
setno al 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
