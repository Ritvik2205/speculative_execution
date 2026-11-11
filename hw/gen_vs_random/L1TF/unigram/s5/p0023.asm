.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
add bl, -124 # instrumentation
setnz bl
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
xor rsi, 53
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
sub dil, dl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
movsx rax, dx
bswap edi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
