.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
add bl, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
add al, -67 # instrumentation
setz dl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 33
bt rsi, rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 73
neg cx
adc rax, rax
lea ax, qword ptr [rbx + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 82
sub dl, 2
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
