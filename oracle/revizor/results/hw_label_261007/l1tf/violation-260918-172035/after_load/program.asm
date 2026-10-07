.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx 
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx] 
lfence
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi 
not al 
add cl, 19 
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx] 
lfence
add cl, bl 
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx 
lfence
sub al, 25 
not di 
cmovno ax, ax 
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl 
lfence
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
lfence
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
