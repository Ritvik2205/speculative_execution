.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
movsx edi, dil
xchg bl, cl
inc al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
cmovno eax, edi
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 19 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and dil, cl
and rsi, 39
sbb rax, 786640702
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
cmp al, 13
and rbx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rbx], 95
sub rcx, 13
sub si, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
