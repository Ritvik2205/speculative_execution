.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and ecx, -104
xor dl, sil
or dl, al
and dl, sil
and bl, 68
and dl, dil
test bl, -9
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
