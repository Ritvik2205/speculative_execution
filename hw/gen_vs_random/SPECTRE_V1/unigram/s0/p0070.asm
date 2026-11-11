.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
test eax, edi
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
cmp dil, -78
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
mul al
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
btc dx, ax
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
