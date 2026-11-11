.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, bx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 73
xor al, 16
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 27
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
lea cx, qword ptr [rdi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
