.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul edi
lea si, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
mov al, al
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
test bx, si
add cl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
sbb dil, cl
lea edi, qword ptr [rdi + rcx + 22]
btr ebx, 7
sbb bl, sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
test ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
