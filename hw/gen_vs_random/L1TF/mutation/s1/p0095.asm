.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
add al, 31
dec cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
lea rsi, qword ptr [rcx + rcx]
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
sbb eax, eax
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -12
xchg dx, bx
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
setnp cl
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
