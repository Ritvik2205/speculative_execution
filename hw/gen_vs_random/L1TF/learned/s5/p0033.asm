.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
add bl, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
or rdi, 51
jmp .bb_0.1
.bb_0.1:
add cx, 46
sub al, 26
or bl, sil
sbb dil, al
test rdi, 95
xor al, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
add sil, sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
