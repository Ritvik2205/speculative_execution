.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rcx]
test sil, dil
cmp rbx, 12
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
setz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
