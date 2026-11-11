.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
bts rax, 77
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
xor cl, 15
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
or bl, -54
btc cx, 115
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
xor eax, 984871847
or cl, -77
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
or dl, 85
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
