.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
add bl, -15 # instrumentation
cmovl rbx, rcx
and ecx, ebx
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
xor cl, 49
or si, -97
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
xor cl, 60
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
lea rdi, qword ptr [rsi + rcx + 64]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
