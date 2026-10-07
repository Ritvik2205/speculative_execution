.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
lfence
sbb bl, 120 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and esi, 0b111 # instrumentation
lfence
btr dword ptr [r14 + rsi], esi 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock adc qword ptr [r14 + rdx], -24 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovp ecx, dword ptr [r14 + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and esi, 0b111 # instrumentation
lfence
bt dword ptr [r14 + rcx], esi 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor edx, dword ptr [r14 + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rcx], -82 
lfence
lea ax, qword ptr [rsi] 
lfence
cmp sil, -110 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and si, 0b111 # instrumentation
lfence
btr word ptr [r14 + rbx], si 
lfence
lea edx, qword ptr [rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
xor word ptr [r14 + rdi], 77 
lfence
lea dx, qword ptr [rbx + rdx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
inc word ptr [r14 + rcx] 
lfence
not eax 
lfence
lea rdx, qword ptr [rdi + rbx + 6421] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
