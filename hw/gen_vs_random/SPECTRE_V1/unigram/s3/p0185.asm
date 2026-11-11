.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
add cl, -29 # instrumentation
lea rbx, qword ptr [rsi + rsi + 57]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 15
test edi, ebx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnl rdi, rax
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdi]
or cl, dl
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
btc ecx, 31
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
xchg ecx, edx
add sil, -73 # instrumentation
setnbe sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
