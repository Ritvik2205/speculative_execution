.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 68
lea eax, qword ptr [rcx + rdx + 24]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 28
lea bx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
xchg edx, ebx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rax
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 6
jmp .bb_0.1
.bb_0.1:
add bl, 93 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 66
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
lea bx, qword ptr [rdx + rax]
sbb cl, -11
sbb rcx, rax
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
