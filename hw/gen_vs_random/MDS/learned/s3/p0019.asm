.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and sil, -69
bt ecx, edi
xor dl, 40
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
or al, 30
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
or al, 74
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
