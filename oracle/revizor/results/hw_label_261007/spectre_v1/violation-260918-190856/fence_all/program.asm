.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
lfence
not word ptr [r14 + rcx] 
lfence
add eax, -2019837038 
lfence
setno bl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rax], eax 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor dl, byte ptr [r14 + rsi] 
lfence
btr cx, dx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
bts word ptr [r14 + rbx], 7 
lfence
jb .bb_0.1 
jmp .exit_0 
.bb_0.1:
lea si, qword ptr [rcx + rcx + 40728] 
lfence
cmp dil, 11 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock and dword ptr [r14 + rsi], 68 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
dec byte ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rdi], bl 
lfence
cmovno rbx, rax 
lfence
sbb al, -127 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
bt dword ptr [r14 + rsi], 7 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock inc word ptr [r14 + rax] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
