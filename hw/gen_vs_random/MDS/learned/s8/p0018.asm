.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 88
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and sil, dil
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor rax, -773894210
and al, -8
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and sil, 89
and dl, sil
xor dil, cl
bt eax, 151
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
not bl
test rax, 1949278494
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
