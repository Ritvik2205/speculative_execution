.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
or dil, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
bt edi, esi
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
test cl, dl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rax, rcx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rsi, 32
or sil, -78
jmp .bb_0.2
.bb_0.2:
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
