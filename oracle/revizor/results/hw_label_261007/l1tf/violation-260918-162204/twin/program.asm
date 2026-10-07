.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
lfence
cmovbe bx, word ptr [r14 + rbx] 
and rdi, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rdi] 
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
lfence
bt qword ptr [r14 + rsi], rdi 
and rbx, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rbx] 
xchg dx, bx 
and rdi, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rdi], dl 
setnp cl 
add al, 31 
dec cl 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovo edi, dword ptr [r14 + rbx] 
and rax, 0b1111111111111 # instrumentation
lfence
adc ecx, dword ptr [r14 + rax] 
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
lfence
bt word ptr [r14 + rbx], cx 
lea rsi, qword ptr [rcx + rcx] 
and rbx, 0b1111111111111 # instrumentation
lfence
sbb ecx, dword ptr [r14 + rbx] 
sbb eax, eax 
and rcx, 0b1111111111111 # instrumentation
lfence
imul ecx, dword ptr [r14 + rcx], -12 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
