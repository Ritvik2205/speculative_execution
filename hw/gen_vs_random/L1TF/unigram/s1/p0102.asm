.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rsi, 74
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
setz dl
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 28
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdi
add al, 22 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
add eax, 760523556
bts edi, 76
mov bl, dl
cmovb ebx, edi
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
or sil, sil
sub al, 88
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
