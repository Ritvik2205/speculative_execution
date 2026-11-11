.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 18658
sub rcx, rax
xor dil, -37
test rax, rcx
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
add ax, 6980
setnb dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, 79
and dl, bl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
test rdx, 1657596343
lea bx, qword ptr [rcx + rsi]
sub bl, sil
cmp bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
