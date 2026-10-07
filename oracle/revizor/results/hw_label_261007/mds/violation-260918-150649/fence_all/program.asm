.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lfence
lock btr word ptr [r14 + rcx], 2 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
btc dword ptr [r14 + rdi], 0 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor di, word ptr [r14 + rsi] 
lfence
bt edx, eax 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and rcx, qword ptr [r14 + rbx] 
lfence
btr eax, ecx 
lfence
and dl, -33 # instrumentation
lfence
cmovns rdi, rdi 
lfence
bts edi, ecx 
lfence
and bl, -26 # instrumentation
lfence
cmovnp rax, rbx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdi], 100 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnle bx, word ptr [r14 + rax] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rdi], 60 
lfence
cmovnp rbx, rax 
lfence
test ecx, 1044879383 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
xor word ptr [r14 + rcx], cx 
lfence
xor cl, 122 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock bts word ptr [r14 + rdx], 4 
lfence
and ax, 15401 
lfence
not dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rcx], 94 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
