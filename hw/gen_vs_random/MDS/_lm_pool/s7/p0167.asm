.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
bts rax, rbx
or cl, dl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
xor dx, 96
and si, -121
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 49
or dil, al
xor cx, -18
bt ax, bx
or sil, -78
jmp .bb_0.1
.bb_0.1:
test rdi, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
