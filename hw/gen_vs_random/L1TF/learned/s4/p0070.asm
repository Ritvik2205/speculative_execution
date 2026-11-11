.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
setno al
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
lea rax, qword ptr [rbx]
and edx, 88
or sil, -44
and cl, bl
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
cwde
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
bts eax, 232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
