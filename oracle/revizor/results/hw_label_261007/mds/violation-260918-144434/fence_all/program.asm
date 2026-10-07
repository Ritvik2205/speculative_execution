.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6 
lfence
bts rax, 117 
lfence
and bl, -13 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp edx, dword ptr [r14 + rdx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovns rbx, qword ptr [r14 + rdi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
btc qword ptr [r14 + rdx], 5 
lfence
and dl, cl 
lfence
or eax, -1642752131 
lfence
cmovo dx, si 
lfence
jmp .bb_0.1 
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rsi], dl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
btr word ptr [r14 + rdx], 5 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
btc qword ptr [r14 + rcx], 3 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock xor word ptr [r14 + rdx], -75 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
bt qword ptr [r14 + rbx], 7 
lfence
and si, ax 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock xor qword ptr [r14 + rdi], rsi 
lfence
cmovp si, si 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
and rsi, 0b111 # instrumentation
lfence
lock btr qword ptr [r14 + rbx], rsi 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rax], -13 
lfence
or al, al 
lfence
xor rdi, -50 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
