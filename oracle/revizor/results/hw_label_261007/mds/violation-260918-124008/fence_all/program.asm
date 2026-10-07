.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
lfence
cmovnb cx, di 
lfence
cmovb rdx, rsi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovb rbx, qword ptr [r14 + rdi] 
lfence
or cl, al 
lfence
test rsi, 879594088 
lfence
or ax, 6575 
lfence
cmovl rcx, rax 
lfence
or rax, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rsi, rax 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor si, word ptr [r14 + rax] 
lfence
or rdx, rdi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovb rbx, qword ptr [r14 + rbx] 
lfence
cmovp rbx, rax 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
btr qword ptr [r14 + rdx], 4 
lfence
or dl, 22 
lfence
xor cl, bl 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
and di, 0b111 # instrumentation
lfence
lock btc word ptr [r14 + rsi], di 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovb eax, dword ptr [r14 + rbx] 
lfence
xor eax, 1170472196 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rcx], cl 
lfence
cmovns eax, ebx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
