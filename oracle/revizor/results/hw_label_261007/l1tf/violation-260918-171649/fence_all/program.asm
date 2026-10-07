.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 10 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor ecx, dword ptr [r14 + rsi] 
lfence
setp sil 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
inc qword ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock not dword ptr [r14 + rdi] 
lfence
adc rax, -457629677 
lfence
lea edx, qword ptr [rcx + rdi + 62270] 
lfence
setnle sil 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovle bx, word ptr [r14 + rdx] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock sub byte ptr [r14 + rbx], -28 
lfence
cmp dl, 66 
lfence
or al, -87 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sbb rcx, qword ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmp qword ptr [r14 + rdx], rcx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
bt word ptr [r14 + rsi], 0 
lfence
and sil, 69 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
