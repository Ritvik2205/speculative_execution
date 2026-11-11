.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
and dil, dil
xor dl, bl
test eax, 87
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 47
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 9
lea si, qword ptr [rdx]
mov bl, bl
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 55
or eax, 87
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
cmovo ebx, edx
sub rdx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
