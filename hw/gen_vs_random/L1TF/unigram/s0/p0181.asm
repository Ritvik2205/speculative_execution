.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not eax
xor edx, edi
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
lea di, qword ptr [rax + rsi + 93]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
xor bx, 94
mul dil
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
mov ecx, esi
add dl, 98
xchg eax, edx
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
