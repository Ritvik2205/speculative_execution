.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 47
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or al, bl
btr ax, 70
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
xor al, 16
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
