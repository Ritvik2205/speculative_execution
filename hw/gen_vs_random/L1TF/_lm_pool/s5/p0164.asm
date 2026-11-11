.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, sil
not ebx
jmp .bb_0.1
.bb_0.1:
or al, bl
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
xor bl, dil
jmp .bb_0.2
.bb_0.2:
or esi, eax
jmp .bb_0.3
.bb_0.3:
and bl, -56 # instrumentation
cmovnle edi, esi
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
