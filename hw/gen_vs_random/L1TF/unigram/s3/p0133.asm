.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
test rcx, rbx
xor esi, ecx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 68
lea rdi, qword ptr [rdx + rdx]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
add bl, 10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -7
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor esi, ebx
and rax, 1163013815
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rbx
setno dl
cmovnz cx, ax
sub al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
