.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
adc dl, cl
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
cmovnb rdx, rdx
sbb cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
mul bl
setnbe bl
setnb sil
mov bl, al
sbb dl, cl
test cx, -20370
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
