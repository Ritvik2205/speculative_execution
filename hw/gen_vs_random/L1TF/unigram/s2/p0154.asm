.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cbw
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
lea rcx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
lea rsi, qword ptr [rax]
setnl sil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 10
test bx, 76
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
test rcx, 10
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 30
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
