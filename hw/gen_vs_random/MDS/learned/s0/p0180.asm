.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
or al, dl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
xor rsi, -117
or ax, 30524
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
or al, -17
xor cl, dil
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
or al, -17
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rcx, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
