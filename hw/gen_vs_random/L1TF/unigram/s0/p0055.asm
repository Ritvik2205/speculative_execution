.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 89
test dil, al
movzx cx, sil
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
add dl, 77 # instrumentation
sbb edx, 44
lea rsi, qword ptr [rsi + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
setb dl
sbb al, cl
btc eax, 220
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -29
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], cx
imul rax, rdi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
