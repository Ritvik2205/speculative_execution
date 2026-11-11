.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdx]
and ebx, edx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 82
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
sbb al, 92
test sil, sil
cmp bl, sil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 87
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 106
cmp dil, al
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 119
add cl, -94 # instrumentation
setnb al
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
