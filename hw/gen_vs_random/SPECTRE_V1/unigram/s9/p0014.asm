.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, bl
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
xor sil, bl
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 42
add dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
xchg sil, bl
cmp al, 53
neg rdi
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
