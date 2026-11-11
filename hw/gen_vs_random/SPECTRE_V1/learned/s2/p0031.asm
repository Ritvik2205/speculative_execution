.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
setno dl
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
xchg edi, eax
bt eax, 127
lea rcx, qword ptr [rbx + rdx]
jmp .bb_0.1
.bb_0.1:
cmovnb edx, ebx
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 5
or dl, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
xor eax, -764881786
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
