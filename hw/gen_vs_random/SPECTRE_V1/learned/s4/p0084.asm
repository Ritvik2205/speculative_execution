.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
lea rbx, qword ptr [rdi]
setns dl
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 22
cbw
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 70
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 92
lea rdi, qword ptr [rsi + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 22
test ecx, 729805876
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
