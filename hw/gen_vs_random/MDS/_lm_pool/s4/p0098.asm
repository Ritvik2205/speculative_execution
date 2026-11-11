.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
btc cx, bx
and cl, -111
not sil
test al, 22
or al, -24
and cl, cl
bt di, si
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
