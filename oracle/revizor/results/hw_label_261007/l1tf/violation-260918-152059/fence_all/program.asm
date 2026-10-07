.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
lfence
cmovs edx, edx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovp bx, word ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
add qword ptr [r14 + rdx], rax 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
setbe byte ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovz esi, dword ptr [r14 + rdx] 
lfence
sbb ax, 67 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovno edi, dword ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rcx], 22 
lfence
bt rsi, rcx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
add byte ptr [r14 + rcx], al 
lfence
and cl, bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rbx], -6 
lfence
and al, 76 
lfence
mov si, 20858 
lfence
btr cx, si 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rdx], dl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
