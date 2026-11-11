.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setl bl
imul sil
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
add dl, -97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
add dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
adc sil, 88
inc edi
or ebx, edi
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], di
cmp bx, cx
movzx edi, al
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
