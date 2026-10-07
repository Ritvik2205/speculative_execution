.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 10 
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi] 
lfence
setp sil 
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi] 
lfence
adc rax, -457629677 
lea edx, qword ptr [rcx + rdi + 62270] 
setnle sil 
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx] 
lfence
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28 
lfence
cmp dl, 66 
or al, -87 
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx 
lfence
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0 
lfence
and sil, 69 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
