.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
lea ebx, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 53
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1908434016
add ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 12
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 47
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
sub bl, sil
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
