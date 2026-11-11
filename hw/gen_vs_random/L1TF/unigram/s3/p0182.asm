.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
setnb dl
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
add dl, 10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 58
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
cmp dx, 26
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rbx]
sub al, bl
mov al, sil
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdi]
btr dx, di
test sil, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
