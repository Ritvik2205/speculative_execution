.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdx], bl 
lfence
and al, dl 
lfence
and rsi, 70 
lfence
or rax, -2043376621 
lfence
btc rbx, rax 
lfence
xor al, cl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr ebx, dword ptr [r14 + rcx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor cx, word ptr [r14 + rbx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rsi], eax 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and di, 0b111 # instrumentation
lfence
btr word ptr [r14 + rcx], di 
lfence
btc bx, 179 
lfence
and cl, 8 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovz edx, dword ptr [r14 + rdx] 
lfence
not al 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rdi], 630928397 
lfence
cmovnle rcx, rax 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock not word ptr [r14 + rdi] 
lfence
cmovnbe dx, si 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rdi], cl 
lfence
and dl, -7 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
