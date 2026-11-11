.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
dec cl
add rsi, 85
inc edi
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
btc rax, rdx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
lea rdx, qword ptr [rax + rcx]
or di, 100
mov dx, ax
and rsi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rsi]
and bl, dl
btc rax, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
