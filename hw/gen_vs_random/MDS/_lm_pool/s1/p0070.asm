.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or cl, 30
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
xor al, -19
or bl, -125
and dil, dl
or al, 37
btc ax, 57
bt ebx, edi
xor di, -83
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
