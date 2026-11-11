.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -37
add rax, 6
cmovnbe bx, dx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
mul rcx
lea di, qword ptr [rax + rcx + 78]
sub al, dl
sub dl, 71
add cl, -93 # instrumentation
not rcx
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
test rdi, -1846965753
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
add al, -53 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 82
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
cmovle rbx, rax
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
