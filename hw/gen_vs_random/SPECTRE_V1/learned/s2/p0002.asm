.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
xor ax, -2537
xchg eax, edx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 60
and cl, 17
and eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
test al, 70
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdi]
xchg si, cx
bts rax, 140
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
