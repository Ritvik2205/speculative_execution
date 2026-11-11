.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
xor ax, -4010
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
test eax, 158941032
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or rdi, 21
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
jmp .bb_0.1
.bb_0.1:
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
