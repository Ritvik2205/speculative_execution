.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnz ax, word ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovno rbx, qword ptr [r14 + rcx] 
lfence
jmp .bb_0.1 
.bb_0.1:
btc dx, 38 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnb dx, word ptr [r14 + rbx] 
lfence
btc dx, ax 
lfence
and cl, -3 # instrumentation
lfence
cmovnb cx, dx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnz rdx, qword ptr [r14 + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovle si, word ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and dword ptr [r14 + rdi], -106 
lfence
or bl, 84 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor word ptr [r14 + rcx], si 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
and cx, 0b111 # instrumentation
lfence
lock btr word ptr [r14 + rdx], cx 
lfence
or ax, -17790 
lfence
cmovs edi, esi 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock btr dword ptr [r14 + rsi], 3 
lfence
cmovnz ax, si 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and rbx, 0b111 # instrumentation
lfence
btr qword ptr [r14 + rdi], rbx 
lfence
bt ebx, 107 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdi], cl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
