.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, si
test cl, 62
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
test al, dl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
jmp .bb_0.1
.bb_0.1:
test sil, dl
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 56
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
not al
not bl
or rax, -689609688
and dil, 125
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
