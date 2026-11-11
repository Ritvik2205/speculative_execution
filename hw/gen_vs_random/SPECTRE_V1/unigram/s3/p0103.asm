.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
add dl, 110 # instrumentation
cmovb rbx, rdx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
inc rax
xor ebx, esi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
btr rax, rcx
not ax
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 26
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
test cl, -120
lea rdx, qword ptr [rdx]
adc rdx, 57
and rdi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
