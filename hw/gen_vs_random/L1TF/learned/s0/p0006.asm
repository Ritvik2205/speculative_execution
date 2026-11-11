.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rdi]
lea rbx, qword ptr [rcx + rax + 55452]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 4
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
add al, 31
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
lea rax, qword ptr [rbx + rcx + 75]
xor bx, dx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 51
xchg dl, dil
adc dl, cl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
