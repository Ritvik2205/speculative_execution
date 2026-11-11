.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
test cl, sil
test bl, dil
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
or al, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test bl, -14
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
or rsi, 99
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
test eax, -571234566
and dil, 125
bt bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
