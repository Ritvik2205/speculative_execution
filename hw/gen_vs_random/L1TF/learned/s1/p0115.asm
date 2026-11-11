.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb esi, edx
bts edi, 52
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
add al, 56
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
jmp .bb_0.2
.bb_0.2:
setno cl
test rcx, rbx
add al, -46
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
