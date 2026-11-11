.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 12
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
or al, dl
lea rax, qword ptr [rdi + rbx + 88]
add sil, bl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
