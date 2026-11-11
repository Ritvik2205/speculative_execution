.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -56 # instrumentation
cmovs rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and sil, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 31
cmovb bx, si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
add ax, 116
jmp .bb_0.1
.bb_0.1:
movsx cx, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
cmp dx, 54
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
lea rax, qword ptr [rcx + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
