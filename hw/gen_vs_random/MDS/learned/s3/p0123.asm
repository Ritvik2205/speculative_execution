.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
xor bl, al
xor al, dil
test bl, cl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 86
or sil, -78
xor bl, sil
test ax, -11534
xor al, dl
btc bx, 58
xor dil, bl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
test al, 127
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
