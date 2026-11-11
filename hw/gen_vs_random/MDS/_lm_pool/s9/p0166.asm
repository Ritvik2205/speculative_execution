.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and si, -121
or dl, bl
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and bl, 68
and dl, al
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or al, bl
or al, -22
or bl, dl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
