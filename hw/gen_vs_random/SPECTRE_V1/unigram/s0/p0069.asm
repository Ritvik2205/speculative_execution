.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rsi]
movzx cx, dil
movzx eax, sil
xor bl, sil
cmovnbe ebx, edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 97
and rax, 1713273566
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
setno al
imul si, si
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
sub al, bl
xor di, 80
cmovb dx, ax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 42
or ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
