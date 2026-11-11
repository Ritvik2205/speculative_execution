.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and edx, -44
bts rax, 77
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 46
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
or al, -75
bts rax, 77
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
xor dil, -70
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
test eax, 298249463
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
bts ebx, 205
test al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
