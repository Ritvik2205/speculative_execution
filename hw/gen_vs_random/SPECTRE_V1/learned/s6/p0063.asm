.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
lea rbx, qword ptr [rdx + rax + 16]
test al, 40
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
test rcx, rdx
and al, dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and al, bl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
