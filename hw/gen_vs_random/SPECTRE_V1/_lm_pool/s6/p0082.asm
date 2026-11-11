.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp bl, dl
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
xor rdi, 14
add al, dil
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test bl, -8
cmp dl, 71
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
