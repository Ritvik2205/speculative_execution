.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe ecx, edx
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 10
movzx si, cl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
add cx, -103
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
mul cx
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
bswap eax
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
neg ax
add ax, 6656
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
