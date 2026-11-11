.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -14
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
bt cx, si
and ecx, -104
xor dil, cl
and cx, -2
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
or cl, 119
or al, cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
xor cl, 55
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
or ax, -20176
or eax, -927349615
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
