.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 50
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
add dl, 12 # instrumentation
lea rbx, qword ptr [rax + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
sub rax, 57846954
sub ebx, 71
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
setp dil
lea dx, qword ptr [rcx + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
mov edx, 83
bts edi, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
