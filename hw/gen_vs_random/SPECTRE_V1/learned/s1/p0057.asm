.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, dx
test al, 59
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
setno dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
cmp al, 46
jnz .bb_0.4
jmp .exit_0
.bb_0.4:
add dil, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
