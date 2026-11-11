.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 23
and cl, cl
or bl, bl
and dl, dl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
test al, dl
test bl, 65
or bl, 100
test al, -7
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
