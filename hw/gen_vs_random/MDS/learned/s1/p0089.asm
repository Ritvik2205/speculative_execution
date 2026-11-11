.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, di
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 12
xor bl, -61
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
test eax, 343548072
xor dil, -70
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 36
or eax, 678817098
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
