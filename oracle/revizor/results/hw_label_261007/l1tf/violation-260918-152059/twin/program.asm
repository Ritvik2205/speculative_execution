.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs edx, edx 
and rcx, 0b1111111111111 # instrumentation
lfence
cmovp bx, word ptr [r14 + rcx] 
and rdx, 0b1111111111111 # instrumentation
lfence
add qword ptr [r14 + rdx], rax 
and rax, 0b1111111111111 # instrumentation
lfence
setbe byte ptr [r14 + rax] 
and rdx, 0b1111111111111 # instrumentation
lfence
cmovz esi, dword ptr [r14 + rdx] 
sbb ax, 67 
and rsi, 0b1111111111111 # instrumentation
lfence
cmovno edi, dword ptr [r14 + rsi] 
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rcx], 22 
bt rsi, rcx 
and rcx, 0b1111111111111 # instrumentation
lfence
add byte ptr [r14 + rcx], al 
and cl, bl 
and rbx, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rbx], -6 
and al, 76 
mov si, 20858 
btr cx, si 
and rdx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rdx], dl 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
