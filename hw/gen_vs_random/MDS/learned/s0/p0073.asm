.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo ax, cx
and al, dil
and al, -55
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and cl, al
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and bl, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 89
btr eax, edx
test bl, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
