.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 58
or esi, 60
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
sub cl, -49
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
cmp cl, -89
mov dl, al
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
