.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 56
add bl, -76 # instrumentation
cmovnle bx, dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], ax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
cmovns rax, rcx
bts ax, cx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
lea cx, qword ptr [rax + rsi]
neg dl
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ebx
adc di, 31
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb bx, cx
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 28
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
setnp dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
