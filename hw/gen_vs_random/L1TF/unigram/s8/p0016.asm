.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
cmovnp ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rsi
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
lea rax, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
movzx rax, bl
adc al, -103
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 41
setno bl
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
btc dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
