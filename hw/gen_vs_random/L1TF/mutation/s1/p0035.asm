.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, -20370
setnb sil
cmovo rbx, rax
add cl, 95 # instrumentation
mov dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
setnbe dl
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -40
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
lea di, qword ptr [rsi + rax + 38960]
setnbe bl
mov bl, al
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and dl, al
sbb dl, cl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
