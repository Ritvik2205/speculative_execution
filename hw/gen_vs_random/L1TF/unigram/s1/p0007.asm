.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
or edi, 85
and ebx, -52
bt ax, bx
imul ecx, edx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
setnp dil
add dl, 48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 51
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
lea cx, qword ptr [rsi + rdi + 65]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
xchg cl, al
sub di, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
