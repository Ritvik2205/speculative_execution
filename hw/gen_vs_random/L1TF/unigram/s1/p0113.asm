.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
lea ax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
add dl, 104 # instrumentation
sbb rdx, 18
adc cx, 71
setnz al
lea ax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
add sil, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
add bl, -116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
cmovl eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
