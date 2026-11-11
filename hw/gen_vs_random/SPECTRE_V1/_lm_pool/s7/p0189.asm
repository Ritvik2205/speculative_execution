.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], dx
setno al
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
test dil, -116
test bl, -8
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
add al, -109
test cl, -120
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
