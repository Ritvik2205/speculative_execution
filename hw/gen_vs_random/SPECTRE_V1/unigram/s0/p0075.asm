.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
test cl, -49
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
dec sil
neg rax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ebx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
add dil, 99 # instrumentation
sets dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub ecx, 83
add edi, ecx
test dx, 65
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 6
add bl, 112 # instrumentation
setnbe bl
cmovl ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
