.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
xor cl, 98
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and cl, bl
and si, -121
or al, 37
xor bl, cl
jmp .bb_0.1
.bb_0.1:
and dl, -73
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and sil, al
and dil, -39
xor bl, cl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
xor al, -4
xor di, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
