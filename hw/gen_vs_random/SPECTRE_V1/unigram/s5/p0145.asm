.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rax + rcx + 58]
sub esi, 31
and rsi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 32
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
add bl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -89
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
mul dl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 26
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmovl ax, cx
xchg ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
