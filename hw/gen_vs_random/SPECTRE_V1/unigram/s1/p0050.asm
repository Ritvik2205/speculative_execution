.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
cmovnp rbx, rsi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
mul si
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
test sil, cl
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
or sil, 52
add dil, -42 # instrumentation
lea di, qword ptr [rsi + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
setl dl
lea edx, qword ptr [rsi + rdx + 46]
add dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 6
setnb cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
