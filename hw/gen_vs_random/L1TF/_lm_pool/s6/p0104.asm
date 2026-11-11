.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
test dil, -126
xor al, sil
test cl, al
xor dil, dl
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rdx + rax + 98]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
xor al, dil
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
