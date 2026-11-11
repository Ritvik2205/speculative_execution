.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bx, cx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], bx
imul rax, rsi
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
add al, -46 # instrumentation
cmovbe rax, rdi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
bt cx, di
lea bx, qword ptr [rdi]
add sil, cl
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
movsx rdx, di
cmovno rdx, rax
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rbx
add bl, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
btr ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
