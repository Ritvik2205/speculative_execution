.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 54
test edi, ecx
add al, 3
add cl, -127
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], eax
sbb edx, ecx
setnz bl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb edx, edi
lea cx, qword ptr [rax + rcx]
setp cl
sbb dl, 127
setb cl
inc dl
add al, 110 # instrumentation
movzx cx, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
