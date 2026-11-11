.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdi, 10
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
test rbx, 75
add cl, 75 # instrumentation
sbb bl, sil
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
imul al
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
xchg rbx, rcx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 17
lea rsi, qword ptr [rcx + rax]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
