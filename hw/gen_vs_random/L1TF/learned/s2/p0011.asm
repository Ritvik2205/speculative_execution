.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rdx]
lea rax, qword ptr [rdx + rdx + 1405]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmp rsi, rbx
jmp .bb_0.2
.bb_0.2:
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -99
cmp al, sil
cmovs rax, rdi
lea rdi, qword ptr [rcx + rdi + 74]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
lea rdx, qword ptr [rax + rcx + 49]
test dil, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
