.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovbe bx, word ptr [r14 + rbx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and rdi, 0b111 # instrumentation
lfence
bt qword ptr [r14 + rsi], rdi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rbx] 
lfence
xchg dx, bx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rdi], dl 
lfence
setnp cl 
lfence
add al, 31 
lfence
dec cl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovo edi, dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
adc ecx, dword ptr [r14 + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and cx, 0b111 # instrumentation
lfence
bt word ptr [r14 + rbx], cx 
lfence
lea rsi, qword ptr [rcx + rcx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sbb ecx, dword ptr [r14 + rbx] 
lfence
sbb eax, eax 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
imul ecx, dword ptr [r14 + rcx], -12 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
