.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec al
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and bl, al
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
add al, -3 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
lea edx, qword ptr [rax + rsi]
add cl, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
add bl, -4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
cmp cl, -71
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
mov cl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
