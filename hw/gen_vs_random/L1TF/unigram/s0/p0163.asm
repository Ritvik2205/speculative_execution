.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
add cl, dil
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
setno sil
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
movzx rdi, bl
jmp .bb_0.1
.bb_0.1:
sub rdx, 7
test sil, 29
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
cmovbe di, dx
or sil, dil
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
lea ebx, qword ptr [rbx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
