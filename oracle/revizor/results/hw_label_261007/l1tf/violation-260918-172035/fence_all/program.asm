.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000 # instrumentation
lfence
and bl, 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv ebx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
xor edi, dword ptr [r14 + rdx] 
lfence
or edi, 0b1000 # instrumentation
lfence
and dil, 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv edi 
lfence
not al 
lfence
add cl, 19 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mul dword ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sub rdi, qword ptr [r14 + rbx] 
lfence
add cl, bl 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
and rbx, 0b111 # instrumentation
lfence
lock bts qword ptr [r14 + rbx], rbx 
lfence
sub al, 25 
lfence
not di 
lfence
cmovno ax, ax 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rax], bl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
lfence
add cl, -84 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
seto byte ptr [r14 + rax] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
