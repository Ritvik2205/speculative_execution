.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor al, 9
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
btr cx, si
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
test cl, 91
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
xor al, 8
jmp .bb_0.1
.bb_0.1:
or eax, 1725503461
and rax, -1931765367
test bl, -14
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or rax, 302048971
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
