.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and dil, -62
and ax, 31082
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
xor dil, -3
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
jmp .bb_0.2
.bb_0.2:
and ax, 339
not rbx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
test al, 91
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
