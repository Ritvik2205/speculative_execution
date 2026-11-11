.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
xor rbx, 89
test bl, dil
or dl, cl
or bl, sil
and sil, bl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test sil, 17
xor cl, 55
jmp .bb_0.1
.bb_0.1:
cmovnp rbx, rdx
and sil, -56
xor dl, -43
test al, sil
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
