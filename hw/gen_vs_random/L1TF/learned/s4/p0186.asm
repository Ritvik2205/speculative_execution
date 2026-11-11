.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
add al, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
lea cx, qword ptr [rax + rcx]
xor cl, cl
xor cl, cl
and al, 76
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
cmovnz rax, rdi
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
setp dil
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
setnp cl
cmovns bx, si
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
bt rdx, rbx
lea ebx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
