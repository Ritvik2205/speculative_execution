.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl 
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx] 
lfence
jmp .bb_0.1 
.bb_0.1:
btc dx, 38 
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx] 
lfence
btc dx, ax 
and cl, -3 # instrumentation
cmovnb cx, dx 
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106 
lfence
or bl, 84 
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si 
lfence
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx 
lfence
or ax, -17790 
cmovs edi, esi 
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3 
lfence
cmovnz ax, si 
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rbx 
lfence
bt ebx, 107 
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
