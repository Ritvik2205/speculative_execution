.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and bl, cl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
test bl, -114
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
not al
xor bl, -102
xor cl, 55
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test eax, 424329527
cmovnp rdi, rsi
or rax, -689609688
or al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
