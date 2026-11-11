.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 1
dec bl
cmp dil, dl
cmovnbe edi, ebx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
sub bl, 15
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
bswap edx
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
sub bl, 15
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
movzx rsi, si
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
add cl, -98 # instrumentation
setp dil
setl al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
