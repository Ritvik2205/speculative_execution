.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 77
add dl, dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 44
xor bl, cl
lea rdi, qword ptr [rbx + rcx + 2]
or cl, 105
jmp .bb_0.1
.bb_0.1:
test bl, 45
test ecx, 98
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
