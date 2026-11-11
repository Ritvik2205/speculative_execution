.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, 112
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
movzx cx, sil
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
cmovnb di, si
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1272979430
test dl, al
lea rbx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
bt rsi, rdx
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
or sil, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
