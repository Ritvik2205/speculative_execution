.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, 104
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 25
or dl, cl
or rbx, -124
and bl, 99
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 98
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
cmovz cx, si
or si, 3
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
cmovle dx, dx
test cl, dl
or cl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
