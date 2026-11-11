.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
or esi, -74
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 36
lea ax, qword ptr [rcx + rdx]
add cl, -127
add dl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
movzx eax, bx
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
add al, -8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 86
and rbx, 11
and ebx, ebx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 30
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
