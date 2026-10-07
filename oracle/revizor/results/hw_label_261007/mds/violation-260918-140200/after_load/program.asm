.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3 
lfence
cmovbe rcx, rsi 
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116 
lfence
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16 
lfence
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl 
lfence
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47 
lfence
test ax, 5320 
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx] 
lfence
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77 
lfence
jmp .bb_0.1 
.bb_0.1:
xor si, bx 
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx] 
lfence
and bx, di 
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rdx, qword ptr [r14 + rcx] 
lfence
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di 
lfence
or rdx, rbx 
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 56 
lfence
cmovbe bx, bx 
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi] 
lfence
bts rdx, 255 
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
