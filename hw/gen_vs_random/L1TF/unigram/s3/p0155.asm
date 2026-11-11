.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, edi
add dil, -93 # instrumentation
xchg rcx, rdi
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
lea edx, qword ptr [rsi + rdi + 39]
xor al, sil
cmovb rsi, rax
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ebx
or cl, 67
setnbe bl
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
add rsi, 98
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
