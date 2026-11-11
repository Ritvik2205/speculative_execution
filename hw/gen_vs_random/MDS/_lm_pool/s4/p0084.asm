.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, si
or al, 25
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
or rdi, -11
test edx, -1561252782
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
xor dl, -43
test rdx, 18
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 61
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
