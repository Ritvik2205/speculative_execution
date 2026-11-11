.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
and sil, sil
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
test al, cl
and cl, cl
and ax, -122
xor bl, dl
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
xor al, 115
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 18
or sil, -78
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
test dl, 27
and cl, -71
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
