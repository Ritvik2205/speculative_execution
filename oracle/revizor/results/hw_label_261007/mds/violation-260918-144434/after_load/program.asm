.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6 
bts rax, 117 
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx] 
lfence
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi] 
lfence
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5 
lfence
and dl, cl 
or eax, -1642752131 
cmovo dx, si 
jmp .bb_0.1 
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl 
lfence
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5 
lfence
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3 
lfence
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], -75 
lfence
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7 
lfence
and si, ax 
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi 
lfence
cmovp si, si 
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rsi 
lfence
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13 
lfence
or al, al 
xor rdi, -50 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
