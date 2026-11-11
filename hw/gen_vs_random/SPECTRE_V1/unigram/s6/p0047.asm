.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 36 # instrumentation
cmovnp rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
setno al
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
inc rax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
lea rax, qword ptr [rax]
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 87
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
setno cl
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
