.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edx
setle dil
sbb rsi, 94
add edx, eax
cmp al, cl
cmovno dx, dx
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
cmovb ax, bx
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 40
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
add al, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and sil, dil
or si, -97
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
