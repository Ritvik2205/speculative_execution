.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
lfence
bts word ptr [r14 + rax], 3 
cmovbe rcx, rsi 
and rdi, 0b1111111111000 # instrumentation
lfence
lock and qword ptr [r14 + rdi], 116 
and rdi, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rdi], -16 
and rbx, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rbx], cl 
and rdi, 0b1111111111000 # instrumentation
lfence
lock xor qword ptr [r14 + rdi], -47 
test ax, 5320 
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnz rcx, qword ptr [r14 + rdx] 
and rax, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rax], -77 
jmp .bb_0.1 
.bb_0.1:
xor si, bx 
and rdx, 0b1111111111111 # instrumentation
lfence
and al, byte ptr [r14 + rdx] 
and bx, di 
and rcx, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rdx, qword ptr [r14 + rcx] 
and rbx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rbx], di 
or rdx, rbx 
and rcx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rcx], 56 
cmovbe bx, bx 
and rdi, 0b1111111111111 # instrumentation
lfence
cmovl edx, dword ptr [r14 + rdi] 
bts rdx, 255 
and rax, 0b1111111111111 # instrumentation
lfence
bt qword ptr [r14 + rax], 3 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
