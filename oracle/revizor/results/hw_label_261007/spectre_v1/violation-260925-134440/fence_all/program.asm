.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
lfence
adc rax, -384715932 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rdi], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
lfence
idiv word ptr [r14 + rdi] 
lfence
sub eax, -518999763 
lfence
adc rdx, 35 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mul word ptr [r14 + rdx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb rdi, qword ptr [r14 + rax] 
lfence
bt dx, ax 
lfence
jb .bb_0.1 
jmp .exit_0 
.bb_0.1:
add al, 90 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovl eax, dword ptr [r14 + rdx] 
lfence
cmovnl eax, ebx 
lfence
or bx, 0b1000000000000000 # instrumentation
lfence
bsf dx, bx 
lfence
add al, 110 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnl rsi, qword ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock btr dword ptr [r14 + rbx], 5 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
dec qword ptr [r14 + rcx] 
lfence
lea si, qword ptr [rsi + rdx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
movsx ebx, byte ptr [r14 + rax] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
