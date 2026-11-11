.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
mov sil, dil
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
setb cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 1
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
and cl, cl
and bl, dl
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
