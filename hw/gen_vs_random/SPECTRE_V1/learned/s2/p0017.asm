.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 56 # instrumentation
cmovns edi, ecx
or dl, cl
setns dl
cmovl rsi, rcx
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
adc dl, sil
add al, 110
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 47
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
cmovnbe bx, cx
cmovnbe si, di
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 7
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
