.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
jmp .bb_0.1
.bb_0.1:
and bx, 51
jmp .bb_0.2
.bb_0.2:
test dil, -51
jmp .bb_0.3
.bb_0.3:
or al, bl
jmp .bb_0.4
.bb_0.4:
xor al, 115
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
test esi, 1857129931
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
