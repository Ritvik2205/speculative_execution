.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -73 # instrumentation
btr di, bx
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
add cl, -23 # instrumentation
cmovl ax, bx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -89
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
xchg al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
add bl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
