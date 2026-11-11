.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
dec bl
lea rcx, qword ptr [rbx + rsi + 4951]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
movzx ebx, cx
lea rcx, qword ptr [rax + rdi + 50]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 62
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 43
xor edi, 48
lea esi, qword ptr [rbx]
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
test ecx, 94
and rax, 363226538
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
