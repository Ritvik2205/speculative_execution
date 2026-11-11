.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
test eax, 1287331633
or esi, ebx
btc ax, di
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 29
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
or rbx, -72
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
or al, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
xor rdx, -59
btr rcx, 72
and eax, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
