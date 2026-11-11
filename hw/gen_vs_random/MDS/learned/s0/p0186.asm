.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, bl
xor cl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
jmp .bb_0.2
.bb_0.2:
xor dil, -5
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
bt ax, si
and dl, -73
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
