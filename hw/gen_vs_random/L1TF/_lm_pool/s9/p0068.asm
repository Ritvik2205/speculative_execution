.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
xor dl, 64
sub cl, al
inc rdx
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
lea rax, qword ptr [rsi + rcx]
lea rdi, qword ptr [rsi + rcx + 25300]
lea rdx, qword ptr [rax + rcx + 10]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
