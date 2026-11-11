.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 69
xor rax, -1128378406
jmp .bb_0.1
.bb_0.1:
xor bl, sil
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
or al, -24
xor dl, bl
and dil, 125
test cx, 401
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and sil, cl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
test al, dl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
