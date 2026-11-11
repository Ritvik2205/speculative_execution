.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and dl, dl
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor sil, 64
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 46
test bl, 12
lea bx, qword ptr [rcx + rsi + 78]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
