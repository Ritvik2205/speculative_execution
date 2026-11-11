.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and dl, -73
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or al, 30
btr si, di
or al, 16
test bl, dl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and dil, -39
or al, -22
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
