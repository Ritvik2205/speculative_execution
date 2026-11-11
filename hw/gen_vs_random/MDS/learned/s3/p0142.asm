.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
test al, -81
btr ax, dx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and dil, bl
test al, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and bl, al
and cl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
xor bl, dl
jmp .bb_0.1
.bb_0.1:
test al, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
