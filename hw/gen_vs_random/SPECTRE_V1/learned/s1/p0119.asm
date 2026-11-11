.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
setno al
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 48
or al, dl
add dl, 47
setz al
and sil, dl
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
xor cl, bl
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
