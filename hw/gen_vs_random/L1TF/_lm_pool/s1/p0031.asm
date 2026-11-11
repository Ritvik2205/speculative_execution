.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor bl, -5
lea rsi, qword ptr [rax + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
setb cl
jmp .bb_0.1
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea ax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
