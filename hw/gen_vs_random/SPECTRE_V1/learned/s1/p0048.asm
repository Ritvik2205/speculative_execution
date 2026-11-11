.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
inc si
sbb cl, -122
setle cl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
test dil, 18
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
test al, 70
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 45
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
cmp dil, dl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -19
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
