.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
sbb bl, 120 
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
lfence
btr dword ptr [r14 + rsi], esi 
and rdx, 0b1111111111000 # instrumentation
lfence
lock adc qword ptr [r14 + rdx], -24 
and rax, 0b1111111111111 # instrumentation
lfence
cmovp ecx, dword ptr [r14 + rax] 
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
lfence
bt dword ptr [r14 + rcx], esi 
and rax, 0b1111111111111 # instrumentation
lfence
xor edx, dword ptr [r14 + rax] 
and rcx, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rcx], -82 
lea ax, qword ptr [rsi] 
cmp sil, -110 
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
lfence
btr word ptr [r14 + rbx], si 
lea edx, qword ptr [rcx] 
and rdi, 0b1111111111111 # instrumentation
lfence
xor word ptr [r14 + rdi], 77 
lea dx, qword ptr [rbx + rdx] 
and rcx, 0b1111111111111 # instrumentation
lfence
inc word ptr [r14 + rcx] 
not eax 
lea rdx, qword ptr [rdi + rbx + 6421] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
