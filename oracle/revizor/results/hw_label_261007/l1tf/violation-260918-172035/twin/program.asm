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
lfence
xor edi, dword ptr [r14 + rdx] 
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi 
not al 
add cl, 19 
and rsi, 0b1111111111111 # instrumentation
lfence
mul dword ptr [r14 + rsi] 
and rbx, 0b1111111111111 # instrumentation
lfence
sub rdi, qword ptr [r14 + rbx] 
add cl, bl 
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lfence
lock bts qword ptr [r14 + rbx], rbx 
sub al, 25 
not di 
cmovno ax, ax 
and rax, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rax], bl 
and rdx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rbx] 
and rax, 0b1111111111111 # instrumentation
lfence
seto byte ptr [r14 + rax] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
