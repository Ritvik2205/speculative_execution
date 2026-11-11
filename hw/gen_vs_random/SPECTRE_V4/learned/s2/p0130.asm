.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -55
sub al, 63
cmp rax, -2096157586
cmp dl, cl
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
sub bl, al
and bl, -119
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
or sil, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
add eax, -1628652110
cmp al, 114
or ax, -29521
sub al, 63
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
