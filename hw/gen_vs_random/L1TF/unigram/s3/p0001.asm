.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, rdx
xor rdi, -80
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmovz di, ax
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
sbb dil, 1
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
sub al, -97
lea ecx, qword ptr [rdx + rbx + 5]
setno al
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
