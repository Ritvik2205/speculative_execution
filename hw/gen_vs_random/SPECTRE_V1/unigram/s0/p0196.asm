.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 44
or cx, cx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
add dl, 47
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
xor sil, sil
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rdx
sbb sil, -78
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
