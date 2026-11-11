.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
lea bx, qword ptr [rax + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 67
lea eax, qword ptr [rbx + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test di, cx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], eax
add dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
add cl, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
