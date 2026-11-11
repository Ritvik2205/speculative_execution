.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -12519
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 40
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
or dl, -21
btc ax, 46
test esi, 425331143
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test esi, 425331143
or al, bl
or cl, dl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
or cx, -42
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
