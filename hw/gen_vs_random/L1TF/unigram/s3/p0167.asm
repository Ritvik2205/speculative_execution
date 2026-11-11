.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edx, -33
lea esi, qword ptr [rdi + rdi + 83]
sbb cl, al
sbb sil, sil
add cx, 22
lea bx, qword ptr [rdx + rax + 28]
dec edi
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
add sil, -61
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
cmp rdi, 50
xchg cl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
