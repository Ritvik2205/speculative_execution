.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
xor rax, -1657511731
test sil, bl
test al, sil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
or rcx, 54
test cl, dl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
or bl, 127
xor cx, -18
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or bl, dl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
