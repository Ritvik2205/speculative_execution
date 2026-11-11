.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ecx
cmp rbx, rcx
and edx, -62
lea ebx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
btr si, cx
and rdx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
add dl, -108 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
test rsi, -1408527332
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
neg rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
