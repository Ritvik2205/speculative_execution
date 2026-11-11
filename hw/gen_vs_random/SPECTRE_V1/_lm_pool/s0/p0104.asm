.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 68
lea rcx, qword ptr [rbx + rbx + 11064]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
cmp al, -77
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
cmp al, dil
bt edx, ecx
lea ebx, qword ptr [rdi]
mov dl, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
