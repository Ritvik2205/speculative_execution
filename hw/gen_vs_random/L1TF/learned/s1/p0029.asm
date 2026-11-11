.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
test bl, 12
and rdi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
test rbx, rsi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
jmp .bb_0.1
.bb_0.1:
and dil, dil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
