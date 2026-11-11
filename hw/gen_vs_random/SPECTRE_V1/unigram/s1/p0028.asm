.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
add al, 9 # instrumentation
adc al, sil
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
setl dil
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
sub bl, -19
cwd
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
inc rdi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
add cl, -35 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
mov cl, dl
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 86
movzx esi, bl
cmovl esi, edx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
