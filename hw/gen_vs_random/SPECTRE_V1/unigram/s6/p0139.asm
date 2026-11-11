.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -119 # instrumentation
adc sil, dl
sbb bl, -41
lea dx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
cmovnp rbx, rdx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
add bl, sil
and rdi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdi]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 3
setp bl
sbb cl, cl
xor dil, dil
cmovb rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
