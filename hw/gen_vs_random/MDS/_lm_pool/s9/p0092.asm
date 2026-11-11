.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test bl, -14
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and bl, bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or al, bl
or dl, 85
xor al, -19
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rax, rcx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
test al, bl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test sil, 17
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
