.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs edx, edx 
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax 
lfence
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx] 
lfence
sbb ax, 67 
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 22 
lfence
bt rsi, rcx 
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al 
lfence
and cl, bl 
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6 
lfence
and al, 76 
mov si, 20858 
btr cx, si 
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
