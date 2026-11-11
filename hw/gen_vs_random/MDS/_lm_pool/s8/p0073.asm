.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
xor al, 9
or rax, 52
and al, 14
or al, 16
or al, 74
or al, dil
and cx, -8
bts rdx, 200
and al, cl
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
xor rcx, 71
and al, al
and rdx, 59
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
