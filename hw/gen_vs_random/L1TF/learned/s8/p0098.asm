.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
inc cl
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], esi
xor dl, bl
cmp bl, dl
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or al, bl
jmp .bb_0.2
.bb_0.2:
test bl, 45
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
