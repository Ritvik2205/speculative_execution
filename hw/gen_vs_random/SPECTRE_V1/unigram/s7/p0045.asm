.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rsi, rdi
cmp cl, 24
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
add al, 110 # instrumentation
movzx cx, dl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
cmovno rcx, rcx
cmp dil, dil
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
cdq
cwd
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
