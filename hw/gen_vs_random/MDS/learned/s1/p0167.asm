.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, di
or dil, bl
and ax, 27170
test dil, bl
test bl, -14
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
not dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
test dl, sil
xor dl, -59
xor al, bl
or rax, 302048971
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
