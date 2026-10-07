.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdx], bl 
and al, dl 
and rsi, 70 
or rax, -2043376621 
btc rbx, rax 
xor al, cl 
and rcx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr ebx, dword ptr [r14 + rcx] 
and rbx, 0b1111111111111 # instrumentation
lfence
xor cx, word ptr [r14 + rbx] 
and rsi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rsi], eax 
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
lfence
btr word ptr [r14 + rcx], di 
btc bx, 179 
and cl, 8 
and rdx, 0b1111111111111 # instrumentation
lfence
cmovz edx, dword ptr [r14 + rdx] 
not al 
and rdi, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rdi], 630928397 
cmovnle rcx, rax 
and rdi, 0b1111111111000 # instrumentation
lfence
lock not word ptr [r14 + rdi] 
cmovnbe dx, si 
and rdi, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rdi], cl 
and dl, -7 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
