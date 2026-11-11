.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 10
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 22
test al, 70
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
cmovno rdx, rbx
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
btc di, 72
sub eax, ecx
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
sbb rsi, 42
btr esi, 82
adc rdi, -75
lea eax, qword ptr [rdx + rax + 17]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
