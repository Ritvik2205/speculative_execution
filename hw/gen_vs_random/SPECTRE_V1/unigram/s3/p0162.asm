.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
add cl, -93 # instrumentation
not rcx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
sub dl, sil
adc eax, 1725322202
add bl, 97 # instrumentation
cmovnb ax, si
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 63
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
cmovo si, bx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, -29
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
