.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
lea si, qword ptr [rdx]
setp sil
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
movsx rdx, cl
add bl, -4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
inc ecx
sbb cx, 53
bswap rcx
not eax
lea ebx, qword ptr [rdi + rsi + 41]
btc cx, 54
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
