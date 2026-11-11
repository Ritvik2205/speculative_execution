.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
add al, 31
xchg dx, bx
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
lea rsi, qword ptr [rcx + rcx]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -12
sbb eax, eax
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
setnp cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
dec cl
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
