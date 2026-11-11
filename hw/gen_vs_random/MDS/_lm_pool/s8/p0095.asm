.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
btr ecx, edx
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test ax, 18697
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
xor sil, -15
or al, -24
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
xor al, -4
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
