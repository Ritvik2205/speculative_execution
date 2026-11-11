.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, ebx
lea rbx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
lea ecx, qword ptr [rdi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
xor di, 63
xor al, dl
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
lea rax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
