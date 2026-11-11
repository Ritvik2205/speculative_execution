.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, -88
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
cmovnbe eax, edx
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
sub dx, 34
lea eax, qword ptr [rbx + rdx + 43]
jmp .bb_0.1
.bb_0.1:
add cx, 17
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
add cl, -5 # instrumentation
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
cmovnp rdi, rdi
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
add al, 36 # instrumentation
lea ebx, qword ptr [rbx + rax + 42]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
