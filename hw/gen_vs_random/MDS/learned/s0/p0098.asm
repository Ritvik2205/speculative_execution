.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
or dl, -97
cmovno rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 96
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and dl, -73
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
or rdi, -11
bt cx, di
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
btc di, 164
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
