.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
lfence
cmovle esi, dword ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr edx, dword ptr [r14 + rax] 
and esi, eax 
add di, 82 
and rdx, 0b1111111111111 # instrumentation
lfence
inc qword ptr [r14 + rdx] 
and rdi, 0b1111111111111 # instrumentation
lfence
add word ptr [r14 + rdi], 91 
cmovl rdx, rdx 
sbb bl, al 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnbe bx, word ptr [r14 + rbx] 
xor dl, -91 
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnz ebx, dword ptr [r14 + rsi] 
and rax, 0b1111111111111 # instrumentation
lfence
cmovz di, word ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rax], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
lfence
idiv dword ptr [r14 + rax] 
and rcx, 0b1111111111000 # instrumentation
lfence
lock or dword ptr [r14 + rcx], -39 
lea bx, qword ptr [rcx + rcx + 45249] 
setle bl 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
