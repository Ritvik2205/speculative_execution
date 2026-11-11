.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
sbb sil, -19
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
cmp dx, 41
add dil, 88
lea rbx, qword ptr [rdx + rbx + 41]
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
setle sil
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
