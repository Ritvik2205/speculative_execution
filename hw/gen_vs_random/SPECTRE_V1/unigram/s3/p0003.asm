.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rcx]
or sil, 122
movsx edx, dl
lea rdi, qword ptr [rdi + rbx]
add bl, -5 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, sil
inc bl
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
cmovnp rbx, rsi
lea rbx, qword ptr [rsi + rax]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
add edx, 49
add ebx, -116
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 32
neg edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
