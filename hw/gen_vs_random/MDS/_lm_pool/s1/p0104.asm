.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 184
test al, 22
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test bl, sil
xor cl, 83
and dl, bl
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
test bl, al
or al, bl
btc ax, 6
or bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
test si, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
