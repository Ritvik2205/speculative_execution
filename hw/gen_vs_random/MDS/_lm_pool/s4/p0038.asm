.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, si
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and bl, 68
and dil, al
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
test cl, -123
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test sil, cl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test sil, 17
and ax, 5001
or al, dl
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
or al, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
