.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rax]
or edx, edi
mov ecx, -1856082135
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
setno al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 73
jmp .bb_0.1
.bb_0.1:
xor dil, bl
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
or rbx, 18
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
add rcx, 18
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
