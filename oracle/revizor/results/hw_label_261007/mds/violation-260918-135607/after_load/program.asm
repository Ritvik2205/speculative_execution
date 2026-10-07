.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl 
lfence
and al, dl 
and rsi, 70 
or rax, -2043376621 
btc rbx, rax 
xor al, cl 
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr ebx, dword ptr [r14 + rcx] 
lfence
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx] 
lfence
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax 
lfence
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di 
lfence
btc bx, 179 
and cl, 8 
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx] 
lfence
not al 
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397 
lfence
cmovnle rcx, rax 
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi] 
lfence
cmovnbe dx, si 
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl 
lfence
and dl, -7 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
