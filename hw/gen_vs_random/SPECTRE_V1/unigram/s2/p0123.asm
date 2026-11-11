.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul al
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -90
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 97
xchg rdx, rbx
add dl, -105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor ax, -2537
setnb dil
test rsi, 58
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
cmovp esi, eax
lea rdi, qword ptr [rcx + rcx + 38]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
