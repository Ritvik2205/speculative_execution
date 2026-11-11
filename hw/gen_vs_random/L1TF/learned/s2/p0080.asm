.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, -20370
cmovb bx, cx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
btc di, ax
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
xor rsi, 61
test sil, 18
btc bx, cx
xor bl, dl
jmp .bb_0.1
.bb_0.1:
or di, cx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
