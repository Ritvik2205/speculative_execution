.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
or ebx, -124
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 59
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -38
lea eax, qword ptr [rdi + rdi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
mov dl, al
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 117
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
lea rax, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
