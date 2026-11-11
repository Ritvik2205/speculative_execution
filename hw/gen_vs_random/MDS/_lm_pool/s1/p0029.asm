.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
test al, bl
or cl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor rdi, -9
and cl, sil
test sil, 17
xor di, -83
test al, cl
test dil, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
bt cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
