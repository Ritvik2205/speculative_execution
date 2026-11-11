.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, bl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -40
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
cmp dil, cl
lea di, qword ptr [rsi + rax + 38960]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
setnbe bl
setnb sil
mov bl, al
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
cmovo rbx, rax
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -800407
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
