.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -23 # instrumentation
setnle cl
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
test al, -99
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rdx + rax + 14]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 54
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
dec rbx
lea si, qword ptr [rbx + rdx + 39]
add rbx, 85
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
