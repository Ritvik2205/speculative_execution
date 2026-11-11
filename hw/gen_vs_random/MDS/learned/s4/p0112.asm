.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -27
test bl, cl
and cx, -8
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
or al, 30
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
or dl, cl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
test dl, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
