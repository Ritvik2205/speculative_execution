.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
bts rcx, rdi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
xor al, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
test esi, 425331143
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
test edi, -1252846009
xor bx, 84
and sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
