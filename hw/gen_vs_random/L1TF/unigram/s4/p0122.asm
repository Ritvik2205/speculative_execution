.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rsi + rbx + 10]
movzx rdx, cl
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
cmp rdx, rdx
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rcx
mov bx, di
jmp .bb_0.1
.bb_0.1:
add bl, 110 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
add si, 54
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 65
dec sil
add ax, 30
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
