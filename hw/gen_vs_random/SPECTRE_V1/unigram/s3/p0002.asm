.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
and esi, esi
add dl, cl
dec dl
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
xor ecx, 25
lea edi, qword ptr [rdi + rbx]
imul al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
cmovnle ecx, eax
lea bx, qword ptr [rdi + rcx + 42]
setbe dil
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 34
adc dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
